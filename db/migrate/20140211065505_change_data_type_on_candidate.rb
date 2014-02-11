class ChangeDataTypeOnCandidate < ActiveRecord::Migration
  def change
      change_table :candidates do |t|
          t.change :id_provinsi, :string
          t.change :id_dapil, :string
          t.change :id_partai, :string
      end
  end
end
