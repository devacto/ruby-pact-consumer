require 'pact/consumer/rspec'

Pact.service_consumer "Payroll Service" do
  has_pact_with "Person Service" do
    mock_service :person_service do
      port 1234
    end
  end
end