shared_examples "successful API response" do |expected|
  it "has a 200 status code" do
    expect(response.status).to be 200
  end

  it "includes a response attribute" do
    expect(response.body).to include 'response'
  end

  it "responds with #{expected} resource" do
    parsed_body = JSON.parse response.body
    expect(parsed_body['response']).to be_a expected
  end
end
