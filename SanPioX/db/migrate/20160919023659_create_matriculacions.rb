class CreateMatriculacions < ActiveRecord::Migration
  def change
    create_table :matriculacions do |t|
      t.string :ci
      t.string :nombre
      t.string :apellido
      t.integer :tiempo

      t.timestamps null: false
    end
  end
end
