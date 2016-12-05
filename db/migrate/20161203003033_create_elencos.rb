class CreateElencos < ActiveRecord::Migration[5.0]
  def change
    create_table :elencos do |t|
      t.references :filme, foreign_key: true
      t.references :ator, foreign_key: true

      t.timestamps
    end
  end
end
