require 'sequel'
require_relative 'db'

module PersonService
  class PersonRepository

    def self.find_person_by_name name
      DATABASE[:persons].where(name: name).single_record
    end

  end
end