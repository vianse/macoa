class CreateSalas < ActiveRecord::Migration[5.0]
  def change
    create_table :salas do |t|
      t.string :nombreSala

      t.timestamps
    end
  end
end
