class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuenta do |t|
      t.string :nombreAlumno
      t.string :apellido
      t.string :ci
      t.string :mes

      t.timestamps null: false
    end
  end
end
