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
  end
end
