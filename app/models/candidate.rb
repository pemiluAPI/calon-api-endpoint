class Candidate < ActiveRecord::Base
  self.primary_key = "id"
  belongs_to :province, -> { select("id, nama") }, foreign_key: :id_provinsi
  belongs_to :electoral_district, -> { select("id, nama") }, foreign_key: :id_dapil
  belongs_to :party, -> { select("id, nama") }, foreign_key: :id_partai
  has_many :riwayat_organisasi_dprs, foreign_key: "id_calon"
  has_many :riwayat_pekerjaan_dprs, foreign_key: "id_calon"
  has_many :riwayat_pendidikan_dprs, foreign_key: "id_calon"
end
