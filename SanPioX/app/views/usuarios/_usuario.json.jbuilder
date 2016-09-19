json.extract! usuario, :id, :nombre, :apellido, :ci, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)