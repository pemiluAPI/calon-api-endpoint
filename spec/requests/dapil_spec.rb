require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @aceh = create(:aceh)
    @jambi = create(:jambi)
    @dapil_aceh1 = create(:dapil_aceh1)
    @dapil_aceh2 = create(:dapil_aceh2)
    @dapil_jambi = create(:dapil_jambi)
  end

  describe "GET /api/dapil" do
    it "returns an array of electoral districts" do
      get "/api/dapil"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 3,
          dapil: [
            {
              id: @dapil_aceh1.id,
              nama: @dapil_aceh1.nama,
              nama_lengkap: @dapil_aceh1.nama_lengkap,
              nama_lembaga: @dapil_aceh1.nama_lembaga,
              jumlah_kursi: @dapil_aceh1.jumlah_kursi,
              jumlah_penduduk: @dapil_aceh1.jumlah_penduduk,
              provinsi: {
                id: @aceh.id,
                nama: @aceh.nama
              }
            },
            {
              id: @dapil_aceh2.id,
              nama: @dapil_aceh2.nama,
              nama_lengkap: @dapil_aceh2.nama_lengkap,
              nama_lembaga: @dapil_aceh2.nama_lembaga,
              jumlah_kursi: @dapil_aceh2.jumlah_kursi,
              jumlah_penduduk: @dapil_aceh2.jumlah_penduduk,
              provinsi: {
                id: @aceh.id,
                nama: @aceh.nama
              }
            },
            {
              id: @dapil_jambi.id,
              nama: @dapil_jambi.nama,
              nama_lengkap: @dapil_jambi.nama_lengkap,
              nama_lembaga: @dapil_jambi.nama_lembaga,
              jumlah_kursi: @dapil_jambi.jumlah_kursi,
              jumlah_penduduk: @dapil_jambi.jumlah_penduduk,
              provinsi: {
                id: @jambi.id,
                nama: @jambi.nama
              }
            }
          ]
        }
      }.to_json
    end
  end
  describe "GET /api/dapil/1101-00-0000" do
    it "returns a dapil" do
      get "/api/dapil/1101-00-0000"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 1,
          total: 1,
          dapil: [
            {
              id: @dapil_aceh1.id,
              nama: @dapil_aceh1.nama,
              nama_lengkap: @dapil_aceh1.nama_lengkap,
              nama_lembaga: @dapil_aceh1.nama_lembaga,
              jumlah_kursi: @dapil_aceh1.jumlah_kursi,
              jumlah_penduduk: @dapil_aceh1.jumlah_penduduk,
              provinsi: {
                id: @aceh.id,
                nama: @aceh.nama
              }
            }]
        }
      }.to_json
    end
  end
end