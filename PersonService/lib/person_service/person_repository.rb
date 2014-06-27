require 'sequel'
require_relative '../../../PersonService/db/person_db.sqlite3'

module PersonService
  class PersonRepository

    def self.find_person_by_name name
      DATABASE[:persons].where(name: name).single_record
    end

  end
end