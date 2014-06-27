require 'sinatra/base'
require_relative 'person_repository'

module PersonService

  class Api < Sinatra::Base

    set :raise_errors, false
    set :show_exceptions, false

    error do
      e = env['sinatra.error']
      content_type :json
      status 500
      {error: e.message, backtrace: e.backtrace}.to_json
    end

    get '/persons/:name' do
      person = PersonRepository.find_person_by_name(params[:name])
      if (person == PersonRepository.find_person_by_name(params[:name]))
        content_type 'application/json'
        person.to_json
      else
        status 404
      end
    end

    get '/persons' do
      "Hello World"
    end

  end

end