module CandidateHelpers
  def build_province(candidate)
      candidate.province.nil? ? {} : {
      id: candidate.province.id,
      nama: candidate.province.nama
    }
  end

  def build_electoral_district(candidate)
    candidate.electoral_district.nil? ? {} : {
      id: candidate.electoral_district.id,
      nama: candidate.electoral_district.nama
    }
  end

  def build_party(candidate)
    candidate.party.nil? ? {} : {
      id: candidate.party.id,
      nama: candidate.party.nama
    }
  end
end

module Pemilu
  class APIv1 < Grape::API
    version 'v1', using: :accept_version_header
    prefix 'api'
    format :json

    resource :caleg do
      helpers CandidateHelpers

      desc "Return all Candidates"
      get do
        candidates = Array.new

        # Prepare conditions based on params
        valid_params = {
          lembaga: 'lembaga',
          jenis_kelamin: 'jenis_kelamin',
          dapil: 'id_dapil',
          partai: 'id_partai',
          provinsi: 'id_provinsi',
          tahun: 'tahun'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        # Set default year
        conditions[:tahun] = params[:tahun] || 2014

        # Set default limit
        limit = (params[:limit].to_i == 0 || params[:limit].empty?) ? 1000 : params[:limit]

        search = ["nama LIKE ? and agama LIKE ?", "%#{params[:nama]}%", "%#{params[:agama]}%"]
        
        unless params[:acara_terpilih].nil?
          terpilih_search = params[:acara_terpilih].downcase == 'true' ? ["terpilih = ?", params[:acara_terpilih]] : ""
        end

        Candidate.includes(:province, :electoral_district, :party)
          .where(conditions)
          .where(search)
          .where(terpilih_search)
          .limit(limit)
          .offset(params[:offset])
          .each do |candidate|
            candidates << {
              id: candidate.id,
              tahun: candidate.tahun,
              lembaga: candidate.lembaga,
              nama: candidate.nama,
              jenis_kelamin: candidate.jenis_kelamin,
              agama: candidate.agama,
              tempat_lahir: candidate.tempat_lahir,
              tanggal_lahir: candidate.tanggal_lahir,
              status_perkawinan: candidate.status_perkawinan,
              nama_pasangan: candidate.nama_pasangan,
              jumlah_anak: candidate.jumlah_anak,
              kelurahan_tinggal: candidate.kelurahan_tinggal,
              kecamatan_tinggal: candidate.kecamatan_tinggal,
              kab_kota_tinggal: candidate.kab_kota_tinggal,
              provinsi_tinggal: candidate.provinsi_tinggal,
              provinsi: candidate.province,
              dapil: candidate.electoral_district,
              partai: candidate.party,
              urutan: candidate.urutan,
              foto_url: candidate.foto_url,
              suara_sah: candidate.suara_sah,
              peringkat_suara_sah_calon: candidate.peringkat_suara_sah_calon,
              terpilih: candidate.terpilih
            }
        end

        {
          results: {
            count: candidates.count,
            total: Candidate.where(conditions).where(search).where(terpilih_search).count,
            caleg: candidates
          }
        }
      end

      desc "Return a Candidate"
      params do
        requires :id, type: String, desc: "Candidate ID."
      end
      route_param :id do
        get do
            candidate = Candidate.find_by(id: params[:id])

            {
              results: {
                count: 1,
                total: 1,
                caleg: [{
                  id: candidate.id,
                  tahun: candidate.tahun,
                  lembaga: candidate.lembaga,
                  nama: candidate.nama,
                  jenis_kelamin: candidate.jenis_kelamin,
                  agama: candidate.agama,
                  tempat_lahir: candidate.tempat_lahir,
                  tanggal_lahir: candidate.tanggal_lahir,
                  status_perkawinan: candidate.status_perkawinan,
                  nama_pasangan: candidate.nama_pasangan,
                  jumlah_anak: candidate.jumlah_anak,
                  kelurahan_tinggal: candidate.kelurahan_tinggal,
                  kecamatan_tinggal: candidate.kecamatan_tinggal,
                  kab_kota_tinggal: candidate.kab_kota_tinggal,
                  provinsi_tinggal: candidate.provinsi_tinggal,
                  riwayat_pendidikan: candidate.riwayat_pendidikan_dprs,
                  riwayat_pekerjaan: candidate.riwayat_pekerjaan_dprs,
                  riwayat_organisasi: candidate.riwayat_organisasi_dprs,
                  provinsi: candidate.province,
                  dapil: candidate.electoral_district,
                  partai: candidate.party,
                  urutan: candidate.urutan,
                  foto_url: candidate.foto_url,
                  suara_sah: candidate.suara_sah,
                  peringkat_suara_sah_calon: candidate.peringkat_suara_sah_calon,
                  terpilih: candidate.terpilih
                }]
              }
            }
        end
      end
    end

    resource :provinsi do
      desc "Return all Provinces"
      get do
        provinces = Array.new
        valid_params = {
            nama: 'nama_lengkap'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end
        Province.where(conditions).find_each do |province|
          provinces << {
            id: province.id,
            nama: province.nama,
            nama_lengkap: province.nama_lengkap,
            nama_inggris: province.nama_inggris,
            jumlah_kursi: province.jumlah_kursi,
            jumlah_penduduk: province.jumlah_penduduk
          }
        end

        {
          results: {
            count: Province.count,
            provinsi: provinces
          }
        }
      end
      desc "Return a Province"
      params do
        requires :id, type: Integer, desc: "Province ID."
      end
      route_param :id do
        get do
            province = Province.find_by(id: params[:id])
          {
            results: {
              count: 1,
              total: 1,
              provinsi: [{
                id: province.id,
                nama: province.nama,
                nama_lengkap: province.nama_lengkap,
                nama_inggris: province.nama_inggris,
                jumlah_kursi: province.jumlah_kursi,
                jumlah_penduduk: province.jumlah_penduduk,
                dapil: province.electoral_districts.select("id, nama")
              }]
            }
          }
        end
      end
    end

    resource :dapil do
      desc "Return all Electoral Districts"
      get do
        electoral_districts = Array.new
        # Prepare conditions based on params
        valid_params = {
          provinsi: 'id_provinsi',
          lembaga: 'nama_lembaga',
          nama: 'nama_lengkap'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end
        ElectoralDistrict.includes(:province).where(conditions).find_each do |electoral_district|
          electoral_districts << {
            id: electoral_district.id,
            nama: electoral_district.nama,
            nama_lengkap: electoral_district.nama_lengkap,
            nama_lembaga: electoral_district.nama_lembaga,
            jumlah_kursi: electoral_district.jumlah_kursi,
            jumlah_penduduk: electoral_district.jumlah_penduduk,
            provinsi: electoral_district.province
          }
        end

        {
          results: {
            count: electoral_districts.count,
            dapil: electoral_districts
          }
        }
      end
      desc "Return a Electoral District"
      params do
        requires :id, type: String, desc: "Dapil Id."
      end
      route_param :id do
        get do
            dapil = ElectoralDistrict.includes(:province).find_by(id: params[:id])
          {
            results: {
              count: 1,
              total: 1,
              dapil: [{
                id: dapil.id,
                nama: dapil.nama,
                nama_lengkap: dapil.nama_lengkap,
                nama_lembaga: dapil.nama_lembaga,
                jumlah_kursi: dapil.jumlah_kursi,
                jumlah_penduduk: dapil.jumlah_penduduk,
                provinsi: dapil.province
              }]
            }
          }
        end
      end
    end

    resource :partai do
      desc "Return all Parties"
      get do
        {
          results: {
            count: Party.count,
            partai: Party.all
          }
        }
      end

      desc "Return a Party"
      params do
        requires :id, type: Integer, desc: "Party ID."
      end
      route_param :id do
        get do
          party = Party.where(id: params[:id])

          {
            results: {
              count: party.count,
              partai: party
            }
          }
        end
      end
    end
  end
end
