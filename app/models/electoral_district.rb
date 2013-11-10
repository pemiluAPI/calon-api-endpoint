class ElectoralDistrict < ActiveRecord::Base
  belongs_to :province,
    -> { select("id, nama_lengkap AS nama") },
    foreign_key: "provinsi_id"
end
