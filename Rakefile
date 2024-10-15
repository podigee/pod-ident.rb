require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'json'
require 'yaml'
require 'net/http'
require 'uri'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :update_bot_rules do
  BOT_JSON_SOURCE = 'https://raw.githubusercontent.com/opawg/user-agents-v2/master/src/bots.json'
  BOT_JSON = File.expand_path('bots.json', __dir__)
  BOT_YML = File.expand_path('lib/detection_rules_bots.yml', __dir__)

  def update_bot_json
    clean_json
    uri = URI.parse(BOT_JSON_SOURCE)
    response = Net::HTTP.get_response(uri)
    File.open(BOT_JSON, 'w+') { |f| f.write(response.body) }
  end

  def clean_json
    File.delete(BOT_JSON) if File.exist?(BOT_JSON)
  end

  def json_content
    json = File.open(BOT_JSON).read
    JSON.parse(json)
  end

  def generate_entry_yml(entry)
    { 'app' => entry['name'],
      'match' => { 'regex' => (entry['pattern']) },
      'platform' => 'bot' }.merge(
        entry_test_value(entry['examples'])
      )
  end

  def entry_test_value(entry_examples)
    return {} if entry_examples.nil?

    examples = entry_examples.map do |example|
      { 'userAgent' => example }
    end

    { 'test' => { 'userAgents' => examples } }
  end

  def write_yml_file(content)
    File.open(BOT_YML, 'w+') { |f| f.write(content.to_yaml) }
    clean_json
  end

  update_bot_json
  all_entries = json_content['entries'].map do |entry|
    generate_entry_yml(entry)
  end
  write_yml_file(all_entries)
end
