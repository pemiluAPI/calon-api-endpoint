class AddUrlLogoMiniToParties < ActiveRecord::Migration
  def change
    change_table :parties do |t|
      t.string :url_logo_mini
    end
    execute "ALTER TABLE parties MODIFY COLUMN url_logo_mini VARCHAR(255) AFTER url_twitter"
  end
end
