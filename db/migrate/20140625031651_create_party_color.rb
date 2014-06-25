class CreatePartyColor < ActiveRecord::Migration
  def change
    create_table :party_colors do |t|
      t.string :id_partai
      t.string :color
    end
  end
end
