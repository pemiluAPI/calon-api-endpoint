class Candidate < ActiveRecord::Base
  belongs_to :province, foreign_key: "provinsi_id"
end
