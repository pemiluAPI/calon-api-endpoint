class CreateRiwayatOrganisasiDpr < ActiveRecord::Migration
  def change
    create_table :riwayat_organisasi_dprs do |t|
      t.string :id_calon
      t.string :ringkasan
    end
  end
end
