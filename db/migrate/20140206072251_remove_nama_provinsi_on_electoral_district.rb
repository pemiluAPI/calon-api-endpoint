class RemoveNamaProvinsiOnElectoralDistrict < ActiveRecord::Migration
  def change
      change_table :electoral_districts do |t|
        t.remove :nama_provinsi
      end
  end
end
