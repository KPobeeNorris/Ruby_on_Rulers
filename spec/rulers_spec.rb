RSpec.describe Rulers do

  let(:env) { { "REQUEST_METHOD" => "GET", "PATH_INFO" => "/example/route" } }
  let(:controller) { Rulers::Controller.new(env) }
  let(:response) { Rulers::Application.new.call(env) }
  let(:body) { response[2][0] }
  let(:status)   { response[0] }

  it "returns the body" do
    expect(body).to eq "Hello from Ruby on Rulers!"
  end

  it "makes a succesful call" do
    expect(status).to eq 200
  end

  context "when missing favicon.ico" do
    let(:env) { { "PATH_INFO" => "/favicon.ico" } }

    it "will return a 404 status" do
      expect(status).to eq 404
    end
  end
end
