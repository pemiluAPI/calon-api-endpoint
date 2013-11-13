require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @dpd1 = create(:dpd1)
    @dpd2 = create(:dpd2)
    @aceh = create(:aceh)
  end

  describe "GET /candidates" do
    it "returns an array of candidates" do
      get "/candidates"
      response.status.should == 200
      response.body.should == {
        results: [
          {
            count: 2,
            candidates: [
              {
                id: @dpd1.id,
                lembaga: @dpd1.lembaga,
                nama: @dpd1.nama,
                kelamin: @dpd1.kelamin,
                tinggal: @dpd1.tinggal,
                calon: @dpd1.calon_id,
                provinsi: {
                  id: @aceh.id,
                  nama: @aceh.nama_lengkap
                },
                dapil: {},
                partai: {}
              },
              {
                id: @dpd2.id,
                lembaga: @dpd2.lembaga,
                nama: @dpd2.nama,
                kelamin: @dpd2.kelamin,
                tinggal: @dpd2.tinggal,
                calon: @dpd2.calon_id,
                provinsi: {
                  id: @aceh.id,
                  nama: @aceh.nama_lengkap
                },
                dapil: {},
                partai: {}
              }
            ]
          }
        ]
      }.to_json
    end
  end

  describe "GET /candidates/DPD1101" do
    it "returns an array of candidates" do
      get "/candidates/DPD1101"
      response.status.should == 200
      response.body.should == {
        results: [
          {
            count: 1,
            candidates: [
              {
                id: @dpd1.id,
                lembaga: @dpd1.lembaga,
                nama: @dpd1.nama,
                kelamin: @dpd1.kelamin,
                tinggal: @dpd1.tinggal,
                calon: @dpd1.calon_id,
                provinsi: {
                  id: @aceh.id,
                  nama: @aceh.nama_lengkap
                },
                dapil: {},
                partai: {}
              }
            ]
          }
        ]
      }.to_json
    end
  end
end