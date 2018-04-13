class CreateStepSixes < ActiveRecord::Migration[5.0]
  def change
    create_table :step_sixes do |t|
      t.string :revisionPagos
      t.string :observaciones
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
