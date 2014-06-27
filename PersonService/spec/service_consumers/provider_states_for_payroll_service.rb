# This RSpec document is used to mock the Consumer.
# This provider state will ensure that the correct data exists in the...
# ...repository.

Pact.provider_states_for "Payroll Service" do

  set_up do
    # truncate will remove all data from the persons table
    PersonService::DATABASE[:persons].truncate
  end

  provider_state "person exists" do
     set_up do
       PersonService::DATABASE[:persons].insert(name: 'Victor', salary: '1000')
     end
  end

end