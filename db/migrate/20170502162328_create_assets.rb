class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :decimals
      t.integer :disp_decimals
      t.string :altname
      t.timestamps
    end
  end
end
