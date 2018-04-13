class CreateTipoVenta < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_venta do |t|
      t.string :tipoVenta

      t.timestamps
    end
  end
end
