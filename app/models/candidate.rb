class Candidate < ActiveRecord::Base
  belongs_to :province, foreign_key: :provinsi_id
  belongs_to :electoral_district, foreign_key: :dapil_id
  belongs_to :party, foreign_key: :partai_id
end
