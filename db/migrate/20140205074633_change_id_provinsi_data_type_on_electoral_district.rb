class ChangeIdProvinsiDataTypeOnElectoralDistrict < ActiveRecord::Migration
  def change
    change_table :electoral_districts do |t|
      t.change :id_provinsi, :string
    end
  end
end
