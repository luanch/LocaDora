class CreateFilmes < ActiveRecord::Migration[5.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :genero
      t.integer :avaliacao
      t.text :sinopse
      t.integer :classificacao_etaria
      t.string :diretor
      t.string :status

      t.timestamps
    end
  end
end
