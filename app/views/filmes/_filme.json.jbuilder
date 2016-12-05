json.extract! filme, :id, :titulo, :genero, :avaliacao, :sinopse, :classificacao_etaria, :diretor, :status, :created_at, :updated_at
json.url filme_url(filme, format: :json)