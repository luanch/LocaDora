json.extract! funcionario, :id, :matricula, :pessoa_id, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)