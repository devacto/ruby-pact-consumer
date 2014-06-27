Pact.provider_states_for 'My Service Consumer' do

  provider_state "person exists" do
     PersonServiceClient.new('')
  end
end