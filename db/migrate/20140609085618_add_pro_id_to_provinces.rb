class AddProIdToProvinces < ActiveRecord::Migration
  def change
    change_table :provinces do |t|
      t.integer :pro_id
    end
  end
end
