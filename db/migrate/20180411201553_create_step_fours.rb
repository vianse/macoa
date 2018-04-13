class CreateStepFours < ActiveRecord::Migration[5.0]
  def change
    create_table :step_fours do |t|
      t.string :accesorio
      t.string :inicio
      t.string :fin
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
