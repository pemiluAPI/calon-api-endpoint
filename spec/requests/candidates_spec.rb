require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @dpd1 = create(:dpd1)
    @dpd2 = create(:dpd2)
    @aceh = create(:aceh)
  end

  describe "GET /api/candidates" do
    it "returns an array of candidates" do
      get "/api/candidates"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 2,
          total: 2,
          candidates: [{
            id: @dpd1.calon_id,
            lembaga: @dpd1.lembaga,
            nama: @dpd1.nama,
            jenis_kelamin: @dpd1.jenis_kelamin,
            domisili: @dpd1.domisili,
            provinsi: {
              id: @aceh.id,
              nama: @aceh.nama
            },
            dapil: {},
            partai: {},
            urutan: @dpd1.urutan,
            foto_url: @dpd1.foto_url
          }, {
            id: @dpd2.calon_id,
            lembaga: @dpd2.lembaga,
            nama: @dpd2.nama,
            jenis_kelamin: @dpd2.jenis_kelamin,
            domisili: @dpd2.domisili,
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

  describe "GET /api/candidates/DPD1101" do
    it "returns an array of candidates" do
      get "/api/candidates/DPD1101"
      response.status.should == 200
      response.body.should == {
        results: {
          count: 1,
          total: 1,
          candidates: [{
            id: @dpd1.calon_id,
            lembaga: @dpd1.lembaga,
            nama: @dpd1.nama,
            jenis_kelamin: @dpd1.jenis_kelamin,
            domisili: @dpd1.domisili,
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