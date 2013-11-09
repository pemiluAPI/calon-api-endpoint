module Candidate
  class API < Grape::API
    format :json

    resource :provinces do
      desc "Return all Provinces"
      get do
        {results: [
          count: Province.count,
          provinsi: Province.select("id, nama_lengkap")
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
