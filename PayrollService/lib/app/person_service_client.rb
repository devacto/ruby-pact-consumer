# This is the object that will get the stuff from Person service...
# ...and put it into the Person object in the Payroll service.

require 'httparty'
require_relative '../../lib/app/models/person'

class PersonServiceClient
  include HTTParty
  base_uri 'http://localhost:1234'

  def get_person_by_name (name)
    response = JSON.parse(self.class.get("/persons/#{name}").body)
    name = response['name']
    salary = response['salary']
    Person.new(name, salary)
  end
end