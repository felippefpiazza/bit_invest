class AddDeletedtoAssetsAndAssetPairs < ActiveRecord::Migration[5.0]
  def change
  	add_column :assets, :deleted_at, :timestamp, after: :updated_at
  	add_column :asset_pairs, :deleted_at, :timestamp, after: :updated_at
  end
end
