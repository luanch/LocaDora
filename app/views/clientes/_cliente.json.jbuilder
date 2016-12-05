json.extract! cliente, :id, :telefone, :endereco, :pessoa_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)