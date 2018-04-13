class CreateDeliveryFlows < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_flows do |t|
      t.string :pedido
      t.string :nombreCliente
      t.string :tipoCredito
      t.string :fechaPromesaEntrega
      t.string :observaciones
      t.string :accesorios
      t.string :placas
      t.string :user_id

      t.timestamps
    end
  end
end
