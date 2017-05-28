class CreateTransports < ActiveRecord::Migration
  def change
    create_table :transports do |t|
      t.string :contact
      t.string :category
      t.string :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
