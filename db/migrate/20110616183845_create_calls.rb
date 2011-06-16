class CreateCalls < ActiveRecord::Migration
  def self.up
    create_table :calls do |t|
      t.integer :constituent_id
      t.integer :campaign_id
      t.date :call_date
      t.time :call_time

      t.timestamps
    end
  end

  def self.down
    drop_table :calls
  end
end
