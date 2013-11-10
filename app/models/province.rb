class Province < ActiveRecord::Base
  has_many :electoral_districts, foreign_key: "provinsi_id"
end
