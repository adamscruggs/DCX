class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :org_id
      t.integer :constituent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
