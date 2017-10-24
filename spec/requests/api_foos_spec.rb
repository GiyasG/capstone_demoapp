require 'rails_helper'

RSpec.describe "Foo API", type: :request do

  include_context "db_cleanup_each", :transaction

  describe "GET /api_foos" do
    it "works! (now write some real specs)" do
      get foos_path
      expect(response).to have_http_status(200)
    end
  end
end
