class CreateProvince < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :nama_lengkap
      t.string :singkatan
      t.string :singkatan_alternatif
      t.string :nama_inggris
    end
  end
end
