class AddColumnStateToDeliveryFlow < ActiveRecord::Migration[5.0]
  def change
    add_column :delivery_flows, :state, :string
  end
end
