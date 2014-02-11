class CreateRiwayatPekerjaanDpr < ActiveRecord::Migration
  def change
    create_table :riwayat_pekerjaan_dprs do |t|
      t.string :id_calon
      t.string :ringkasan
    end
  end
end
