class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nome
      t.string :autor
      t.string :disciplina

      t.timestamps null: false
    end
  end
end
