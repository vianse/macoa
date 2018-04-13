class CreateFlows < ActiveRecord::Migration[5.0]
  def change
    create_table :flows do |t|
      t.string :current_hash
      t.string :data
      t.string :prev_hash
      t.string :time
      t.string :index
      t.string :nonce
      t.string :company

      t.timestamps
    end
  end
end
