require 'httparty'
require_relative '../app/models/person'

class PersonServiceClient
  include HTTParty
  base_uri 'http://localhost'

  def get_person
    name = JSON.parse(self.class.get("/person").body)['name']
    Person.new(name)
  end
end