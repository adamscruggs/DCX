class CreateOutcomes < ActiveRecord::Migration
  def self.up
    create_table :outcomes do |t|
      t.string :outcome_description

      t.timestamps
    end
  end

  def self.down
    drop_table :outcomes
  end
end
