json.extract! cobro, :id, :tipo, :monto, :nombre, :apellido, :ci, :created_at, :updated_at
json.url cobro_url(cobro, format: :json)