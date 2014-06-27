# This is the object that will get the stuff from Person service...
# ...and put it into the Person object in the Payroll service.

require 'httparty'
require_relative '../../lib/app/models/person'

class PersonServiceClient
  include HTTParty
  base_uri 'http://localhost'

  def get_person
    name = JSON.parse(self.class.get("/person").body)['name']
    salary = JSON.parse(self.class.get("/person").body)['salary']
    Person.new(name, salary)
  end
end