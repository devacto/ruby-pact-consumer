require 'sequel'

module PersonService
  DATABASE ||= Sequel.connect(adapter: 'sqlite',
                              database: './db/person_db.sqlite3')
end