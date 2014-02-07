class RenameFieldsOnCandidate < ActiveRecord::Migration
  def change
    change_table :candidates do |t|
      t.change :id, :string
      t.rename :provinsi_id, :id_provinsi
      t.rename :dapil_id, :id_dapil
      t.rename :partai_id, :id_partai
      t.string :status_perkawinan
      t.string :nama_pasangan
      t.string :jumlah_anak
      t.string :kelurahan_tinggal
      t.string :kecamatan_tinggal
      t.string :kab_kota_tinggal
      t.string :provinsi_tinggal
      t.remove :domisili
    end
  end
end
