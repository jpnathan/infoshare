class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :author
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
end
