class CreateStepSevens < ActiveRecord::Migration[5.0]
  def change
    create_table :step_sevens do |t|
      t.string :fechaRevisionPrevia
      t.string :pedido
      t.string :user_id
      t.string :completado

      t.timestamps
    end
  end
end
