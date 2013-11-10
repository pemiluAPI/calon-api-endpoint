module Pemilu
  class API < Grape::API
    format :json

    resource :candidates do
      desc "Return all Candidates"
      get do
        {results: [
          count: Candidate.count,
          candidates: Candidate.select("id, calon_id, nama")
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
        {results: [
          count: ElectoralDistrict.count,
          dapil: ElectoralDistrict.select("id, nama")
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
