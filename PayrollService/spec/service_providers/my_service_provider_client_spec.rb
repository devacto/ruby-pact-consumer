# This RSpec document is used to mock the service provider.
# That is why it is in the service_providers folder.

require_relative '../../lib/app/person_service_client'
require_relative '../pact_helper'

describe PersonServiceClient, :pact => true do

  before do
    PersonServiceClient.base_uri('http://localhost:1234')
  end

  subject { PersonServiceClient.new }

  describe "get_person" do
    before do
      person_service.given("person exists").
          upon_receiving("a request for person").
          with(method: 'get', path: '/person').
          will_respond_with(
            status: 200,
            headers: {'Content-Type' => 'application/json'},
            body: {
                name: 'Victor',
                salary: '1000'
            })
    end

    it "returns a Person" do
      expect(subject.get_person).to eq(Person.new('Victor', '1000'))
    end
  end

end