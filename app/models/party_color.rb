class PartyColor < ActiveRecord::Base  
  belongs_to :party, foreign_key: :id_partai
end