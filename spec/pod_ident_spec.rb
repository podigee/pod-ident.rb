# frozen_string_literal: true

RSpec.describe PodIdent do
  RULES.each do |rule|
    app = rule[:app]
    test = rule[:test]

    next unless test

    context "App: #{app}" do
      test['userAgents'].each do |user_agent_rule|
        user_agent = user_agent_rule['userAgent']
        expecting_negative_result = user_agent_rule['negative'] || false

        context user_agent do
          let(:result) { PodIdent::Detector.detect(user_agent) }

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

  BOTS_RULES.each do |rule|
    app = rule[:app]
    test = rule[:test]

    next unless test

    context "App: #{app}" do
      test['userAgents'].each do |user_agent_rule|
        user_agent = user_agent_rule['userAgent']

        context user_agent do
          let(:result) { PodIdent::Detector.detect(user_agent) }

          it 'detects the correct app' do
            expect(result.app).to eq(app)
          end

          it 'detects the user agent as bot' do
            expect(result.bot?).to be true
          end
        end
      end
    end
  end

  specify 'every rule should have a `match` key' do
    RULES.each do |rule|
      expect(rule).to have_key(:match), "rule does not have 'match' key: #{rule}"
    end
  end
end
