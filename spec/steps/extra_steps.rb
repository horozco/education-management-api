module ExtraSteps
  step "I submit a :method to :path" do |method, path|
    path = "http://localhost:3000/#{path}"
    @response = Faraday.send(method.to_sym, path)
  end

  step "The response code should be :code" do |code|
    expect(@response.status).to eq 200
  end

  step "The JSON response should have a :attribute array with at least :count result" do |attribute, count|
    body = JSON.parse(@response.body)
    expect(body).to have_key attribute
    expect(body[attribute].count).to be >= 1
  end

  step "The JSON response should have a :attribute attribute with the response" do |attribute|
    body = JSON.parse(@response.body)
    expect(body).to have_key attribute
    expect(body[attribute]).to_not be_empty
  end
end
