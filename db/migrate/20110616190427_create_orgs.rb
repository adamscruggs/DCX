class CreateOrgs < ActiveRecord::Migration
  def self.up
    create_table :orgs do |t|
      t.string :name
      t.text :description
      t.integer :primary_user

      t.timestamps
    end
  end

  def self.down
    drop_table :orgs
  end
end
