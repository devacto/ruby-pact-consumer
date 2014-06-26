require_relative '../../lib/my_service_provider_client'
require_relative 'pact_helper'

describe MyServiceProviderClient, :pact => true do

  before do
    MyServiceProviderClient.base_uri 'localhost:1234'
  end

  subject { MyServiceProviderClient.new }

  describe "get_person" do
    before do
      my_service_provider.given("person exists").
          upon_receiving("a request for person").
          with(method: 'get', path: '/person').
          will_respond_with(
            status: 200,
            headers: {'Content-Type' => 'application/json'},
            body: {name: 'Victor'})
    end

    it "returns a Person" do
      expect(subject.get_person).to eq(Person.new('Victor'))
    end
  end

end