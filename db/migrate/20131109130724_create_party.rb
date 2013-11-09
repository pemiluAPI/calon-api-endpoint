class CreateParty < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :nama
      t.string :singkatan
      t.string :situs
      t.string :facebook
      t.string :twitter
    end
  end
end
