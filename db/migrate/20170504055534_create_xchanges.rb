class CreateXchanges < ActiveRecord::Migration[5.0]
  def change
    create_table :xchanges do |t|
      t.string :name
      t.string :key1
      t.string :key2
      t.timestamps
    end
    add_column :asset_pairs, :xchange_id, :integer,  after: :altname
    add_column :assets, :xchange_id, :integer,  after: :name
  	add_column :rates, :xchange_id, :integer,  after: :measure_datetime
  end
end
