class CreateStepEights < ActiveRecord::Migration[5.0]
  def change
    create_table :step_eights do |t|
      t.string :inicio
      t.string :fin
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
