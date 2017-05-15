class CreateAssetPairs < ActiveRecord::Migration[5.0]
  def change
    create_table :asset_pairs do |t|
      t.string :name
      t.string :altname
      t.integer :base_asset_id
      t.string :base_asset_name
      t.integer :quote_asset_id
      t.string :quote_asset_name
      t.integer :lot_decimal
      t.integer :pair_decimal
      t.timestamps
    end
  end
end
