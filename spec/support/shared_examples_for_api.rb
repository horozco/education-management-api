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

shared_examples "unsuccessful API response" do
  it "has a 422 status code" do
    expect(response.status).to be 422
  end

  it "includes error metadata" do
    expect(response.body).to include 'error'
    expect(response.body).to include 'error_description'
  end
end
