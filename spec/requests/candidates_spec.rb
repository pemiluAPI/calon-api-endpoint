require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @dpd1 = create(:dpd1)
    @dpd2 = create(:dpd2)
    @aceh = create(:aceh)
  end

  describe "GET /api/caleg" do
    it "returns an array of caleg" do
      get "/api/caleg"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 2,
          total: 2,
          caleg: [{
            id: @dpd1.id,
            lembaga: @dpd1.lembaga,
            nama: @dpd1.nama,
            jenis_kelamin: @dpd1.jenis_kelamin,
            kab_kota_tinggal: @dpd1.kab_kota_tinggal,
            provinsi: {
              id: @aceh.id,
              nama: @aceh.nama
            },
            dapil: {},
            partai: {},
            urutan: @dpd1.urutan,
            foto_url: @dpd1.foto_url
          }, {
            id: @dpd2.id,
            lembaga: @dpd2.lembaga,
            nama: @dpd2.nama,
            jenis_kelamin: @dpd2.jenis_kelamin,
            kab_kota_tinggal: @dpd1.kab_kota_tinggal,
            provinsi: {
              id: @aceh.id,
              nama: @aceh.nama
            },
            dapil: {},
            partai: {},
            urutan: @dpd2.urutan,
            foto_url: @dpd2.foto_url
          }]
        }
      }.to_json
    end
  end

  describe "GET /api/caleg/1100-00-0000-0001" do
    it "returns an array of caleg" do
      get "/api/caleg/1100-00-0000-0001"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 1,
          total: 1,
          caleg: [{
            id: @dpd1.id,
            lembaga: @dpd1.lembaga,
            nama: @dpd1.nama,
            jenis_kelamin: @dpd1.jenis_kelamin,
            kab_kota_tinggal: @dpd1.kab_kota_tinggal,
            provinsi: {
              id: @aceh.id,
              nama: @aceh.nama
            },
            dapil: {},
            partai: {},
            urutan: @dpd1.urutan,
            foto_url: @dpd1.foto_url
          }]
        }
      }.to_json
    end
  end
end