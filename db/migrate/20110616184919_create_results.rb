class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :call_id
      t.integer :outcome_id
      t.boolean :in_favor
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
