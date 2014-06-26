require 'pact/provider/rspec'

Pact.service_provider "My Service Provider" do
  honours_pact_with 'My Service Consumer' do
    pact_uri './spec/pacts/my_service_consumer-my_service_provider.json'
  end
end