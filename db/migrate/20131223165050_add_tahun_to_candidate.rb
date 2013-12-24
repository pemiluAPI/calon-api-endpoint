class AddTahunToCandidate < ActiveRecord::Migration
  def change
    change_table :candidates do |t|
      t.integer :tahun
    end
  end
end
