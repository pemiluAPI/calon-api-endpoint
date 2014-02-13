require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @aceh = create(:aceh)
    @jambi = create(:jambi)
    @dapil_aceh1 = create(:dapil_aceh1)
    @dapil_aceh2 = create(:dapil_aceh2)
    @dapil_jambi = create(:dapil_jambi)
  end

  describe "GET /api/provinsi" do
    it "returns an array of provinces" do
      get "/api/provinsi"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 2,
          provinsi: [
            {
              id: @aceh.id,
              nama: @aceh.nama,
              nama_lengkap: @aceh.nama_lengkap,
              nama_inggris: @aceh.nama_inggris,
              jumlah_kursi: @aceh.jumlah_kursi,
              jumlah_penduduk: @aceh.jumlah_penduduk,
              dapil: [
                {
                  id: @dapil_aceh1.id,
                  nama: @dapil_aceh1.nama
                },
                {
                  id: @dapil_aceh2.id,
                  nama: @dapil_aceh2.nama
                }
              ]
            },
            {
              id: @jambi.id,
              nama: @jambi.nama,
              nama_lengkap: @jambi.nama_lengkap,
              nama_inggris: @jambi.nama_inggris,
              jumlah_kursi: @jambi.jumlah_kursi,
              jumlah_penduduk: @jambi.jumlah_penduduk,
              dapil: [
                {
                  id: @dapil_jambi.id,
                  nama: @dapil_jambi.nama
                }
              ]
            }
          ]
        }
      }.to_json
    end
  end
  describe "GET /api/provinsi/11" do
    it "returns a province" do
      get "/api/provinsi/11"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 1,
          total:1,
          provinsi: [
            {
              id: @aceh.id,
              nama: @aceh.nama,
              nama_lengkap: @aceh.nama_lengkap,
              nama_inggris: @aceh.nama_inggris,
              jumlah_kursi: @aceh.jumlah_kursi,
              jumlah_penduduk: @aceh.jumlah_penduduk,
              dapil: [
                {
                  id: @dapil_aceh1.id,
                  nama: @dapil_aceh1.nama
                },
                {
                  id: @dapil_aceh2.id,
                  nama: @dapil_aceh2.nama
                }
              ]
            }]
        }
      }.to_json
    end
  end
end