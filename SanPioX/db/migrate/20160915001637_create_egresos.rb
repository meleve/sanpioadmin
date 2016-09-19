class CreateEgresos < ActiveRecord::Migration
  def change
    create_table :egresos do |t|
      t.string :tipo
      t.string :de
      t.string :gasto
      t.integer :monto

      t.timestamps null: false
    end
  end
end
