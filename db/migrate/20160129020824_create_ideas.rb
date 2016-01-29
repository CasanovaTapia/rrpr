class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :status
      t.text :tagline
      t.text :body

      t.timestamps null: false
    end
  end
end
