class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :apellido
      t.string :ci
      t.date :fechanac
      t.string :luegarnac
      t.string :domicilio
      t.string :nombrepa
      t.string :profesionpa
      t.string :nombrema
      t.string :profesionma
      t.integer :numeroTelef

      t.timestamps null: false
    end
  end
end
