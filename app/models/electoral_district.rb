class ElectoralDistrict < ActiveRecord::Base
  belongs_to :province,
    -> { select("id, nama") },
    foreign_key: "id_provinsi"
end
