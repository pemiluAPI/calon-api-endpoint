class Province < ActiveRecord::Base
  has_many :electoral_districts, foreign_key: "id_provinsi"
end
