class RenameKelaminOnCandidate < ActiveRecord::Migration
  def change
    change_table :candidates do |t|
      t.rename :kelamin, :jenis_kelamin
    end
  end
end
