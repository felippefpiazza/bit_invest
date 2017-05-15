# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170510071106) do

  create_table "asset_pairs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "altname"
    t.integer  "xchange_id"
    t.integer  "base_asset_id"
    t.string   "base_asset_name"
    t.integer  "quote_asset_id"
    t.string   "quote_asset_name"
    t.integer  "lot_decimal"
    t.integer  "pair_decimal"
    t.integer  "enable"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.datetime "deleted_at"
  end

  create_table "assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "xchange_id"
    t.integer  "decimals"
    t.integer  "disp_decimals"
    t.string   "altname"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.datetime "deleted_at"
  end

  create_table "oportunities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "rates_run_id"
    t.integer  "exchange_id"
    t.integer  "first_asset_id"
    t.integer  "first_asset_name"
    t.integer  "second_asset_id"
    t.integer  "second_asset_name"
    t.integer  "third_asset_id"
    t.integer  "third_asset_name"
    t.integer  "first_asset_pair_id"
    t.integer  "first_asset_pair_name"
    t.decimal  "first_exchange",         precision: 35, scale: 8
    t.decimal  "first_volume",           precision: 35, scale: 8
    t.decimal  "first_deep_volume",      precision: 35, scale: 8
    t.decimal  "first_deep_exchange",    precision: 35, scale: 8
    t.integer  "second_asset_pair_id"
    t.integer  "second_asset_pair_name"
    t.decimal  "second_exchange",        precision: 35, scale: 8
    t.decimal  "second_volume",          precision: 35, scale: 8
    t.decimal  "second_deep_volume",     precision: 35, scale: 8
    t.decimal  "second_deep_exchange",   precision: 35, scale: 8
    t.integer  "third_asset_pair_id"
    t.integer  "third_asset_pair_name"
    t.decimal  "third_exchange",         precision: 35, scale: 8
    t.decimal  "third_volume",           precision: 35, scale: 8
    t.decimal  "third_deep_volume",      precision: 35, scale: 8
    t.decimal  "third_deep_exchange",    precision: 35, scale: 8
    t.decimal  "total_exchange",         precision: 35, scale: 8
    t.decimal  "total_deep_exchange",    precision: 35, scale: 8
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "asset_pair_id"
    t.string   "asset_pair_name"
    t.integer  "rates_run_id"
    t.string   "type"
    t.decimal  "exchange",        precision: 35, scale: 8
    t.decimal  "volume",          precision: 35, scale: 8
    t.datetime "timestamp"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "rates_run_id"
    t.datetime "measure_datetime"
    t.integer  "xchange_id"
    t.integer  "asset_pair_id"
    t.string   "asset_pair"
    t.decimal  "exchange_ask",                   precision: 35, scale: 8
    t.decimal  "exchange_ask_whole_lot_volume",  precision: 35, scale: 8
    t.decimal  "exchange_ask_lot_volume",        precision: 35, scale: 8
    t.decimal  "exchange_bid",                   precision: 35, scale: 8
    t.decimal  "exchange_bid_whole_lot_volume",  precision: 35, scale: 8
    t.decimal  "exchange_bid_lot_volume",        precision: 35, scale: 8
    t.decimal  "exchange_last_trade",            precision: 35, scale: 8
    t.decimal  "exchange_last_trade_lot_volume", precision: 35, scale: 8
    t.decimal  "volume_today",                   precision: 35, scale: 8
    t.decimal  "volume_24h",                     precision: 35, scale: 8
    t.decimal  "weighted_avg_price_today",       precision: 35, scale: 8
    t.decimal  "weighted_avg_price_24h",         precision: 35, scale: 8
    t.decimal  "number_of_trades_today",         precision: 35, scale: 8
    t.decimal  "number_of_trades_24h",           precision: 35, scale: 8
    t.decimal  "low_today",                      precision: 35, scale: 8
    t.decimal  "low_24h",                        precision: 35, scale: 8
    t.decimal  "high_today",                     precision: 35, scale: 8
    t.decimal  "high_24h",                       precision: 35, scale: 8
    t.decimal  "opening",                        precision: 35, scale: 8
    t.integer  "depth"
    t.decimal  "ask_deep_volume",                precision: 35, scale: 8
    t.decimal  "ask_deep_exchange",              precision: 35, scale: 8
    t.decimal  "bid_deep_volume",                precision: 35, scale: 8
    t.decimal  "bid_deep_exchange",              precision: 35, scale: 8
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
  end

  create_table "rates_runs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "xchanges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "key1"
    t.string   "key2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
