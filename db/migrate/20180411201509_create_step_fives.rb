class CreateStepFives < ActiveRecord::Migration[5.0]
  def change
    create_table :step_fives do |t|
      t.string :confirmacion
      t.string :documentacion
      t.string :placas
      t.string :observaciones
      t.string :gestorConfirmacion
      t.string :nombreGestor
      t.string :fechaEntregaGestor
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
