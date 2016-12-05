class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.references :filme, foreign_key: true
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
