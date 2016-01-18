class AddShotToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :shoti, :string
    add_column :entries, :shotii, :string
    add_column :entries, :shotiii, :string
  end
end
