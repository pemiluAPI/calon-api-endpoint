class CreateRiwayatPendidikanDpr < ActiveRecord::Migration
  def change
    create_table :riwayat_pendidikan_dprs do |t|
      t.string :id_calon
      t.string :ringkasan
    end
  end
end
