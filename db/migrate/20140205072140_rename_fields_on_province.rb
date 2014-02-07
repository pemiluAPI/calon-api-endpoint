class RenameFieldsOnProvince < ActiveRecord::Migration
  def change
    change_table :provinces do |t|
      t.rename :singkatan, :nama_lengkap
      t.rename :kursi, :jumlah_kursi
      t.rename :penduduk, :jumlah_penduduk
    end
  end
end
