class AddFieldsOnCandidate < ActiveRecord::Migration
  def change
    change_table :candidates do |t|
      t.integer :suara_sah
      t.integer :peringkat_suara_sah_calon
      t.string :terpilih
    end
  end
end
