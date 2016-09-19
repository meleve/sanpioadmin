json.extract! matriculacion, :id, :ci, :nombre, :apellido, :tiempo, :created_at, :updated_at
json.url matriculacion_url(matriculacion, format: :json)