class RenameFieldsOnParty < ActiveRecord::Migration
  def change
    change_table :parties do |t|
      t.change :id, :string
      t.rename :singkatan, :nama_lengkap
      t.rename :situs, :url_situs
      t.rename :facebook, :url_facebook
      t.rename :twitter, :url_twitter
    end
  end
end
