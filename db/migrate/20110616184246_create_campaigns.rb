class CreateCampaigns < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.text :script
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :campaigns
  end
end
