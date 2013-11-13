class ElectoralDistrict < ActiveRecord::Base
  belongs_to :province,
    -> { select("id, nama") },
    foreign_key: "provinsi_id"
end
