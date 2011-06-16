class CreateConstituents < ActiveRecord::Migration
  def self.up
    create_table :constituents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street
      t.string :zipcode
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
  end

  def self.down
    drop_table :constituents
  end
end
