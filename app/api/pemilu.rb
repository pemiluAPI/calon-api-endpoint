module Pemilu
  class API < Grape::API
    format :json

    resource :candidates do
      desc "Return all Candidates"
      get do
        candidates = Array.new

        Candidate.find_each do |candidate|
          candidates << {
            id: candidate.id,
            lembaga: candidate.lembaga,
            nama: candidate.nama,
            kelamin: candidate.kelamin,
            tinggal: candidate.tinggal,
            calon: candidate.calon_urutan,
            provinsi: {
              id: candidate.province.id,
              nama: candidate.province.nama_lengkap
            }
          } unless candidate.province.nil?
        end

        {results: [
          count: candidates.count,
          candidates: candidates
        ]}
      end

      desc "Return a Candidate"
      params do
        requires :id, type: String, desc: "Candidate ID."
      end
      route_param :id do
        get do
          candidate = Candidate.select("id, calon_id, nama").where(calon_id: params[:id])

          {results: [
            count: candidate.count,
            candidates: candidate
          ]}
        end
      end
    end

    resource :provinces do
      desc "Return all Provinces"
      get do
        provinces = Array.new
        Province.select("id, nama_lengkap").find_each do |province|
          provinces << {
            id: province.id,
            nama: province.nama_lengkap,
            dapil: province.electoral_districts.select("id, nama")
          }
        end

        {results: [
          count: Province.count,
          provinsi: provinces
        ]}
      end
    end

    resource :dapil do
      desc "Return all Electoral Districts"
      get do
        electoral_districts = Array.new
        ElectoralDistrict.select("id, nama, provinsi_id").find_each do |electoral_district|
          electoral_districts << {
            id: electoral_district.id,
            nama: electoral_district.nama,
            provinsi: electoral_district.province
          }
        end

        {results: [
          count: electoral_districts.count,
          dapil: electoral_districts
        ]}
      end
    end

    resource :parties do
      desc "Return all Parties"
      get do
        {results: [
          count: Party.count,
          parties: Party.select("id, nama, singkatan, situs")
        ]}
      end

      desc "Return a Party"
      params do
        requires :id, type: Integer, desc: "Party ID."
      end
      route_param :id do
        get do
          party = Party.select("id, nama, singkatan, situs").where(id: params[:id])

          {results: [
            count: party.count,
            parties: party
          ]}
        end
      end
    end
  end
end
