require 'pact/provider/rspec'
require_relative '../../PersonService/spec/service_consumers/provider_states_for_payroll_service'

Pact.service_provider "People Service" do
  honours_pact_with "Payroll Service" do
    pact_uri './spec/pacts/payroll_service-person_service.json'
  end
end