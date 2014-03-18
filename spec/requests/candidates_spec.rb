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
            tahun: @dpd1.tahun,
            lembaga: @dpd1.lembaga,
            nama: @dpd1.nama,
            jenis_kelamin: @dpd1.jenis_kelamin,
            agama: @dpd1.agama,
            tempat_lahir: @dpd1.tempat_lahir,
            tanggal_lahir: @dpd1.tanggal_lahir,
            status_perkawinan: @dpd1.status_perkawinan,
            nama_pasangan: @dpd1.nama_pasangan,
            jumlah_anak: @dpd1.jumlah_anak,
            kelurahan_tinggal: @dpd1.kelurahan_tinggal,
            kecamatan_tinggal: @dpd1.kecamatan_tinggal,
            kab_kota_tinggal: @dpd1.kab_kota_tinggal,
            provinsi_tinggal: @dpd1.provinsi_tinggal,            
            provinsi: {
              id: @aceh.id,
              nama: @aceh.nama
            },
            dapil: nil,
            partai: nil,
            urutan: @dpd1.urutan,
            foto_url: @dpd1.foto_url
          }, {
            id: @dpd2.id,
            tahun: @dpd2.tahun,
            lembaga: @dpd2.lembaga,
            nama: @dpd2.nama,
            jenis_kelamin: @dpd2.jenis_kelamin,
            agama: @dpd2.agama,
            tempat_lahir: @dpd2.tempat_lahir,
            tanggal_lahir: @dpd2.tanggal_lahir,
            status_perkawinan: @dpd2.status_perkawinan,
            nama_pasangan: @dpd2.nama_pasangan,
            jumlah_anak: @dpd2.jumlah_anak,
            kelurahan_tinggal: @dpd2.kelurahan_tinggal,
            kecamatan_tinggal: @dpd2.kecamatan_tinggal,
            kab_kota_tinggal: @dpd2.kab_kota_tinggal,
            provinsi_tinggal: @dpd2.provinsi_tinggal,
            provinsi: {
              id: @aceh.id,
              nama: @aceh.nama
            },
            dapil: nil,
            partai: nil,
            urutan: @dpd2.urutan,
            foto_url: @dpd2.foto_url
          }]
        }
      }.to_json
    end

    it "should limit params is work" do
      get "/api/caleg?limit=1"
      ress = JSON.parse(response.body)
      ress["results"]["count"].should == 1
      ress["results"]["total"].should == 2
    end

    it "when limit == 0 should return all data" do
      get "/api/caleg?limit=0"
      ress = JSON.parse(response.body)
      ress["results"]["count"].should == 2
      ress["results"]["total"].should == 2
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
            tahun: @dpd1.tahun,
            lembaga: @dpd1.lembaga,
            nama: @dpd1.nama,
            jenis_kelamin: @dpd1.jenis_kelamin,
            agama: @dpd1.agama,
            tempat_lahir: @dpd1.tempat_lahir,
            tanggal_lahir: @dpd1.tanggal_lahir,
            status_perkawinan: @dpd1.status_perkawinan,
            nama_pasangan: @dpd1.nama_pasangan,
            jumlah_anak: @dpd1.jumlah_anak,
            kelurahan_tinggal: @dpd1.kelurahan_tinggal,
            kecamatan_tinggal: @dpd1.kecamatan_tinggal,
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
            dapil: nil,
            partai: nil,
            urutan: @dpd1.urutan,
            foto_url: @dpd1.foto_url
          }]
        }
      }.to_json
    end
  end
end