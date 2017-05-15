class AddAssetPairEnableSearchTag < ActiveRecord::Migration[5.0]
  def change
  	add_column :asset_pairs, :enable, :integer,  after: :pair_decimal
  end
end
