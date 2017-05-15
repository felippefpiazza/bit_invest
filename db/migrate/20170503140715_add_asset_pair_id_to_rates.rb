class AddAssetPairIdToRates < ActiveRecord::Migration[5.0]
  def change
  	add_column :rates, :asset_pair_id, :integer,  after: :measure_datetime
  end
end
