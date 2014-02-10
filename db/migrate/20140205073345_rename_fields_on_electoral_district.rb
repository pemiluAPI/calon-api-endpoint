class RenameFieldsOnElectoralDistrict < ActiveRecord::Migration
  def change
    change_table :electoral_districts do |t|
      t.change :id, :string
      t.rename :singkatan, :nama_lengkap
      t.string :nama_lembaga
      t.rename :provinsi_id, :id_provinsi
      t.string :nama_provinsi
      t.integer :jumlah_kursi
      t.integer :jumlah_penduduk
    end
  end
end
