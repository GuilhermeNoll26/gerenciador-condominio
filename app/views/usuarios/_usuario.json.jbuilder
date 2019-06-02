json.extract! usuario, :id, :cod_usuario, :login, :senha, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
