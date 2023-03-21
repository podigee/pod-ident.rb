# frozen_string_literal: true

module PodIdent
  class DetectionResult
    attr_reader :app, :user_agent, :rule
    attr_accessor :platform

    def initialize(rule, user_agent)
      @user_agent = user_agent
      return unless rule

      @rule = rule
      @app = rule[:app]
    end

    def bot?
      !@rule.nil? && @rule[:platform] == 'bot'
    end

    def positive?
      !@app.nil?
    end

    def platform_rule
      @rule[:platform]
    end
  end
end
