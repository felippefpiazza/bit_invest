class CreateOportunities < ActiveRecord::Migration[5.0]
  def change
    create_table :oportunities do |t|
      t.integer :rates_run_id
      t.integer :exchange_id
      t.integer :first_asset_id
      t.integer :first_asset_name
      t.integer :second_asset_id
      t.integer :second_asset_name
      t.integer :third_asset_id
      t.integer :third_asset_name
      t.integer :first_asset_pair_id
      t.integer :first_asset_pair_name
      t.decimal :first_exchange , :precision => 35, :scale => 8
      t.decimal :first_volume , :precision => 35, :scale => 8
      t.decimal :first_deep_volume , :precision => 35, :scale => 8
      t.decimal :first_deep_exchange , :precision => 35, :scale => 8
      t.integer :second_asset_pair_id
      t.integer :second_asset_pair_name
      t.decimal :second_exchange , :precision => 35, :scale => 8
      t.decimal :second_volume , :precision => 35, :scale => 8
      t.decimal :second_deep_volume , :precision => 35, :scale => 8
      t.decimal :second_deep_exchange , :precision => 35, :scale => 8
      t.integer :third_asset_pair_id
      t.integer :third_asset_pair_name
      t.decimal :third_exchange , :precision => 35, :scale => 8
      t.decimal :third_volume , :precision => 35, :scale => 8
      t.decimal :third_deep_volume , :precision => 35, :scale => 8
      t.decimal :third_deep_exchange , :precision => 35, :scale => 8
      t.decimal :total_exchange , :precision => 35, :scale => 8
      t.decimal :total_deep_exchange , :precision => 35, :scale => 8
      t.timestamps
    end
  end
end
