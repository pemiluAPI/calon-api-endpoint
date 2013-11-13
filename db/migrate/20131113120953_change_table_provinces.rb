class ChangeTableProvinces < ActiveRecord::Migration
  def change
    change_table :provinces do |t|
      t.rename :nama_lengkap, :nama
      t.remove :singkatan_alternatif
      t.integer :kursi
      t.integer :penduduk
    end
  end
end
