class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :asset_pair_id
      t.string :asset_pair_name
      t.integer :rates_run_id
      t.string :type
      t.decimal :exchange , :precision => 35, :scale => 8
      t.decimal :volume , :precision => 35, :scale => 8
      t.timestamp :timestamp
      t.timestamps
    end

    add_column :rates, :depth, :integer, after: :opening
    add_column :rates, :ask_deep_volume, :decimal, :precision => 35, :scale => 8, after: :depth
    add_column :rates, :ask_deep_exchange, :decimal, :precision => 35, :scale => 8, after: :ask_deep_volume
    add_column :rates, :bid_deep_volume, :decimal, :precision => 35, :scale => 8, after: :ask_deep_exchange
    add_column :rates, :bid_deep_exchange, :decimal, :precision => 35, :scale => 8, after: :bid_deep_volume
  end
end
