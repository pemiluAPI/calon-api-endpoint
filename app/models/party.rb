class Party < ActiveRecord::Base
  self.primary_key = "id"
  has_many :party_colors, foreign_key: :id_partai
end
