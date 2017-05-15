class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
	t.timestamp :measure_datetime
      	t.string :asset_pair
      	t.decimal :exchange_ask , :precision => 35, :scale => 8
      	t.decimal :exchange_bid , :precision => 35, :scale => 8
      	t.decimal :exchange_last_trade , :precision => 35, :scale => 8
      	t.decimal :volume_today , :precision => 35, :scale => 8
      t.timestamps
    end
  end
end
