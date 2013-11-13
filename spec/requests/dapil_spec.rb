require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @aceh = create(:aceh)
    @jambi = create(:jambi)
    @dapil_aceh1 = create(:dapil_aceh1)
    @dapil_aceh2 = create(:dapil_aceh2)
    @dapil_jambi = create(:dapil_jambi)
  end

  describe "GET /dapil" do
    it "returns an array of electoral districts" do
      get "/dapil"
      response.status.should == 200
      response.body.should == {
        results: [
          {
            count: 3,
            dapil: [
              {
                id: @dapil_aceh1.id,
                nama: @dapil_aceh1.nama,
                provinsi: {
                  id: @aceh.id,
                  nama: @aceh.nama_lengkap
                }
              },
              {
                id: @dapil_aceh2.id,
                nama: @dapil_aceh2.nama,
                provinsi: {
                  id: @aceh.id,
                  nama: @aceh.nama_lengkap
                }
              },
              {
                id: @dapil_jambi.id,
                nama: @dapil_jambi.nama,
                provinsi: {
                  id: @jambi.id,
                  nama: @jambi.nama_lengkap
                }
              }
            ]
          }
        ]
      }.to_json
    end
  end
end