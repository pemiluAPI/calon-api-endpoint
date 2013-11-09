class CreateElectoralDistrict < ActiveRecord::Migration
  def change
    create_table :electoral_districts do |t|
      t.string :nama
      t.string :singkatan
      t.integer :provinsi_id
    end
  end
end
