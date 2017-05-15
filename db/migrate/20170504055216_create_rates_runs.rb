class CreateRatesRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :rates_runs do |t|
      t.timestamps
    end
    add_column :rates, :rates_run_id, :integer,  after: :id
  end
end
