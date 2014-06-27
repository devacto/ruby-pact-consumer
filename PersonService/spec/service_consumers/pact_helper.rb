require 'pact/provider/rspec'
require './spec/service_consumers/provider_states_for_my_service_consumer'

Pact.service_provider "My Service Provider" do
  honours_pact_with 'My Service Consumer' do
    pact_uri './spec/pacts/my_service_consumer-my_service_provider.json'
  end
end