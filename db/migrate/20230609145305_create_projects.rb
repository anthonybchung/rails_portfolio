class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.string :github
      t.string :category
      t.boolean :on_main_page

      t.timestamps
    end
    add_index :projects, :name, unique: true
  end
end
