module Google
  module Civic
    shared_context "a connection to the client" do
      let(:client)     { Client.new(api_key, connection) }
      let(:connection) { Connection.new(params) }
      let(:api_key)    { "1234567890" }
      let(:params) {
        {
          base_url: Router::BASE_URL
        }
      }
      let(:method) { :get }
      let(:path) { "elections?zipcode=#{zipcode}&key=#{api_key}" }
      let(:kind) { "elections" }

      before { stub_request_for(method, kind, path) }
    end
  end
end
