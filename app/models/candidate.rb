class Candidate < ActiveRecord::Base
  belongs_to :province, foreign_key: :id_provinsi
  belongs_to :electoral_district, foreign_key: :id_dapil
  belongs_to :party, foreign_key: :id_partai
end
