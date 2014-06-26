require 'httparty'
require_relative '../app/models/person'

class MyServiceProviderClient
  include HTTParty
  base_uri 'http://localhost'

  def get_person
    name = JSON.parse(self.class.get("/person").body)['name']
    Person.new(name)
  end
end