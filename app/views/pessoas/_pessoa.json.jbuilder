json.extract! pessoa, :id, :cpf, :nome, :email, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)