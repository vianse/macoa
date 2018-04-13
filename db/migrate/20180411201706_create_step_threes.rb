class CreateStepThrees < ActiveRecord::Migration[5.0]
  def change
    create_table :step_threes do |t|
      t.string :numeroFactura
      t.string :vehiculo
      t.string :nombreVendedor
      t.string :cliente
      t.text :notasCargo
      t.text :notasCredito
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
