class CreateCadProjetos < ActiveRecord::Migration
  def change
    create_table :cad_projetos do |t|
      t.string :nome
      t.string :autor
      t.string :categoria
      t.string :descricao

      t.timestamps null: false
    end
  end
end
