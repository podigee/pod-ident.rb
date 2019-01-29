# frozen_string_literal: true

require 'pod_ident/version'
require 'pod_ident/detection_rules'
require 'pod_ident/detection_result'

module PodIdent
  class Detector
    attr_reader :user_agent_string
    attr_accessor :result

    def self.detect(user_agent_string)
      new(user_agent_string).detect
    end

    def initialize(user_agent_string)
      @user_agent_string = user_agent_string
    end

    def detect
      return nil if user_agent_string.blank?
      self.result = DetectionResult.new(find_rule, user_agent_string)
      identify_platform if result.positive?

      result
    end

    private

    def find_rule
      RULES.detect do |rule|
        rule.stringify_keys!
        found = false

        match = rule['match']

        found = apply_starts_with(match['startsWith'], found)
        found = apply_includes(match['includes'], found)

        excluding = match['excluding']
        if found && excluding
          found = false if excluding['text'] && user_agent_string.include?(excluding['text'])

          if excluding['regex'] && Regexp.new(excluding['regex']).match(user_agent_string)
            found = false
          end
        end

        found
      end
    end

    def apply_starts_with(starts_with, found)
      return found unless starts_with

      Array(starts_with).detect do |string|
        found = user_agent_string.start_with?(string)
      end

      found
    end

    def apply_includes(includes, found)
      return found unless includes

      Array(includes).detect do |string|
        found = user_agent_string.include?(string)
      end
      found
    end

    def identify_platform
      result.platform = nil

      regexes = if result.platform_rule['regex']
                  Array(result.platform_rule['regex'])
                else
                  result.platform_rule['regexes']
                end

      result.platform = result.platform_rule['text'] if result.platform_rule['text']

      regexes&.detect do |regex|
        match = Regexp.new(regex).match(user_agent_string)
        next if match.nil?

        result.platform = match[1]
        if result.platform_rule['replacements']
          result.platform = replace_name(result.platform, result.platform_rule['replacements'])
        end
        true
      end

      result.platform = result.platform_rule['fallback'] if !result.platform && result.platform_rule['fallback']
    end

    def replace_name(target, replacements)
      replacement = replacements.detect { |repl| repl['name'] == target }

      if replacement
        replacement['replaceWith']
      else
        target
      end
    end
  end
end
