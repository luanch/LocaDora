class CreateFuncionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionarios do |t|
      t.string :matricula
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
