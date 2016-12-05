class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :telefone
      t.string :endereco
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
