class AddFieldOnParty < ActiveRecord::Migration
  def change
    change_table :parties do |t|
      t.string :url_logo_small
      t.string :url_logo_medium
    end
  end
end
