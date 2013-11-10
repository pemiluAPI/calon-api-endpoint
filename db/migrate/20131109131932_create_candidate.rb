class CreateCandidate < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :lembaga
      t.integer :provinsi_id
      t.integer :dapil_id
      t.integer :partai_id
      t.integer :calon_urutan
      t.string :calon_id
      t.string :nama
      t.string :kelamin
      t.string :tinggal
      t.string :agama
      t.string :tempat_lahir
      t.string :tanggal_lahir
    end
  end
end
