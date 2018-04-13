class CreateStepTwos < ActiveRecord::Migration[5.0]
  def change
    create_table :step_twos do |t|
      t.string :desembolso
      t.string :fecha
      t.string :hora
      t.string :observaciones
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
