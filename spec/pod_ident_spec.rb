# frozen_string_literal: true

RSpec.describe PodIdent do
  RULES.each do |rule|
    app = rule['app']
    context "App: #{app}" do
      rule['test']['userAgents'].each do |user_agent_rule|
        user_agent = user_agent_rule['userAgent']
        expecting_negative_result = user_agent_rule['negative'] || false

        result = PodIdent::Detector.detect(user_agent)
        context user_agent do
          if expecting_negative_result
            it 'does not detect the app' do
              expect(result.app).to_not eq(app)
            end
          else
            it 'detects the correct app' do
              expect(result.app).to eq(app)
            end

            it 'detects the correct platform' do
              expect(result.platform).to eq(user_agent_rule['platform'])
            end
          end
        end
      end
    end
  end
end
