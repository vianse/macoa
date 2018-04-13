class CreateStepNines < ActiveRecord::Migration[5.0]
  def change
    create_table :step_nines do |t|
      t.string :sala
      t.string :auto
      t.string :factura
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
