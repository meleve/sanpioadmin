class CreateCobros < ActiveRecord::Migration
  def change
    create_table :cobros do |t|
      t.string :tipo
      t.string :monto
      t.string :nombre
      t.string :apellido
      t.string :ci

      t.timestamps null: false
    end
  end
end
