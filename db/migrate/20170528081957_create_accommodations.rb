class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :contact
      t.string :category
      t.string :description
      t.string :sex
      t.decimal :price

      t.timestamps null: false
    end
  end
end
