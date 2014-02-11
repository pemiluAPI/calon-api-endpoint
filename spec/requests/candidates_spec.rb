require 'spec_helper'

describe Pemilu::API do
  before (:each) do
    @dpd1 = create(:dpd1)
    @dpd2 = create(:dpd2)
    @aceh = create(:aceh)
    @riwayat_pend1 = create(:riwayat_pend1)
    @riwayat_pend2 = create(:riwayat_pend2)
    @riwayat_pend3 = create(:riwayat_pend3)
    @riwayat_krj1 = create(:riwayat_krj1)
    @riwayat_krj2 = create(:riwayat_krj2)
    @riwayat_krj3 = create(:riwayat_krj3)
    @riwayat_org1 = create(:riwayat_org1)
    @riwayat_org2 = create(:riwayat_org2)
    @riwayat_org3 = create(:riwayat_org3)
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
            provinsi_tinggal: @dpd1.provinsi_tinggal,
            riwayat_pendidikan: [{
                    id: @riwayat_pend1.id,
                    ringkasan: @riwayat_pend1.ringkasan
                    },{
                    id: @riwayat_pend2.id,
                    ringkasan: @riwayat_pend2.ringkasan
                    }],
            riwayat_pekerjaan: [{
                    id: @riwayat_krj1.id,
                    ringkasan: @riwayat_krj1.ringkasan
                    },{
                    id: @riwayat_krj2.id,
                    ringkasan: @riwayat_krj2.ringkasan
                    }],
            riwayat_organisasi: [{
                    id: @riwayat_org1.id,
                    ringkasan: @riwayat_org1.ringkasan
                    },{
                    id: @riwayat_org2.id,
                    ringkasan: @riwayat_org2.ringkasan
                    }],
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
            provinsi_tinggal: @dpd1.provinsi_tinggal,
            riwayat_pendidikan: [{
                    id: @riwayat_pend3.id,
                    ringkasan: @riwayat_pend3.ringkasan
                    }],
            riwayat_pekerjaan: [{
                    id: @riwayat_krj3.id,
                    ringkasan: @riwayat_krj3.ringkasan
                    }],
            riwayat_organisasi: [{
                    id: @riwayat_org3.id,
                    ringkasan: @riwayat_org3.ringkasan
                    }],
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
            provinsi_tinggal: @dpd1.provinsi_tinggal,
            riwayat_pendidikan: [{
                    id: @riwayat_pend1.id,
                    ringkasan: @riwayat_pend1.ringkasan
                    },{
                    id: @riwayat_pend2.id,
                    ringkasan: @riwayat_pend2.ringkasan
                    }],
            riwayat_pekerjaan: [{
                    id: @riwayat_krj1.id,
                    ringkasan: @riwayat_krj1.ringkasan
                    },{
                    id: @riwayat_krj2.id,
                    ringkasan: @riwayat_krj2.ringkasan
                    }],
            riwayat_organisasi: [{
                    id: @riwayat_org1.id,
                    ringkasan: @riwayat_org1.ringkasan
                    },{
                    id: @riwayat_org2.id,
                    ringkasan: @riwayat_org2.ringkasan
                    }],
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