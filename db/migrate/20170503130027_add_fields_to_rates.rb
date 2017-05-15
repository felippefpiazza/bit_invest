class AddFieldsToRates < ActiveRecord::Migration[5.0]
  def change
  	add_column :rates, :exchange_ask_whole_lot_volume, :decimal, :precision => 35, :scale => 8,  after: :exchange_ask
  	add_column :rates, :exchange_ask_lot_volume, :decimal, :precision => 35, :scale => 8,  after: :exchange_ask_whole_lot_volume
  	add_column :rates, :exchange_bid_whole_lot_volume, :decimal, :precision => 35, :scale => 8,  after: :exchange_bid
  	add_column :rates, :exchange_bid_lot_volume, :decimal, :precision => 35, :scale => 8,  after: :exchange_bid_whole_lot_volume  	
	add_column :rates, :exchange_last_trade_lot_volume, :decimal, :precision => 35, :scale => 8,  after: :exchange_last_trade
	add_column :rates, :volume_24h, :decimal, :precision => 35, :scale => 8,  after: :volume_today
	add_column :rates, :weighted_avg_price_today, :decimal, :precision => 35, :scale => 8, after: :volume_24h
	add_column :rates, :weighted_avg_price_24h, :decimal, :precision => 35, :scale => 8, after: :weighted_avg_price_today
	add_column :rates, :number_of_trades_today, :decimal, :precision => 35, :scale => 8, after: :weighted_avg_price_24h
	add_column :rates, :number_of_trades_24h, :decimal, :precision => 35, :scale => 8, after: :number_of_trades_today
	add_column :rates, :low_today, :decimal, :precision => 35, :scale => 8, after: :number_of_trades_24h
	add_column :rates, :low_24h, :decimal, :precision => 35, :scale => 8, after: :low_today
	add_column :rates, :high_today, :decimal, :precision => 35, :scale => 8, after: :low_24h
	add_column :rates, :high_24h, :decimal, :precision => 35, :scale => 8, after: :high_today
	add_column :rates, :opening, :decimal, :precision => 35, :scale => 8, after: :high_24h
  end
end
