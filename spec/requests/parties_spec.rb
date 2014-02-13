require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @pkb = create(:pkb)
    @pan = create(:pan)
  end

  describe "GET /api/partai" do
    it "returns an array of parties" do
      get "/api/partai"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 2,
          partai: [{
            id: @pkb.id,
            nama: @pkb.nama,
            nama_lengkap: @pkb.nama_lengkap,
            url_situs: @pkb.url_situs,
            url_facebook: @pkb.url_facebook,
            url_twitter: @pkb.url_twitter
          }, {
            id: @pan.id,
            nama: @pan.nama,
            nama_lengkap: @pan.nama_lengkap,
            url_situs: @pan.url_situs,
            url_facebook: @pan.url_facebook,
            url_twitter: @pan.url_twitter
          }]
        }
      }.to_json
    end
  end

  describe "GET /api/partai/02" do
    it "returns a party" do
      get "/api/partai/02"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 1,
          partai: [{
            id: @pkb.id,
            nama: @pkb.nama,
            nama_lengkap: @pkb.nama_lengkap,
            url_situs: @pkb.url_situs,
            url_facebook: @pkb.url_facebook,
            url_twitter: @pkb.url_twitter
          }]
        }
      }.to_json
    end
  end
end