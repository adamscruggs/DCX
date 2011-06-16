class AddEmailUniqueness < ActiveRecord::Migration
  def self.up
  	add_index :constituents, :email, :unique => true
  end

  def self.down
  	remove_index :constituents, :email
  end
end
