class ElectoralDistrict < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :province,
    -> { select("id, nama") },
    foreign_key: "id_provinsi"
end
