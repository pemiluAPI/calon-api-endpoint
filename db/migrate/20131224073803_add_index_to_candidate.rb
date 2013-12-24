class AddIndexToCandidate < ActiveRecord::Migration
  def change
    change_table :candidates do |t|
      t.index :calon_id, unique: true
    end
  end
end
