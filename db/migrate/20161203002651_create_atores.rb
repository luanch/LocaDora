class CreateAtores < ActiveRecord::Migration[5.0]
  def change
    create_table :atores do |t|
      t.string :nome
      t.string :sexo

      t.timestamps
    end
  end
end
