class ChangeCandidate < ActiveRecord::Migration
  def change
    change_table :candidates do |t|
      t.string :foto_url
      t.rename :tinggal, :domisili
      t.rename :calon_urutan, :urutan
    end
  end
end
