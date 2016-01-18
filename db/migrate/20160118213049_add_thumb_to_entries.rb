class AddThumbToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :thumb, :string
  end
end
