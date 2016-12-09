class AddPasswordDigestToClientes < ActiveRecord::Migration[5.0]
  def change
    add_column :clientes, :password_digest, :string
  end
end
