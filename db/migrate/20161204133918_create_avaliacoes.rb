class CreateAvaliacoes < ActiveRecord::Migration[5.0]
  def change
    create_table :avaliacoes do |t|
      t.references :filme, foreign_key: true
      t.references :cliente, foreign_key: true
      t.integer :nota

      t.timestamps
    end
  end
end
