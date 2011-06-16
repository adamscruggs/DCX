class Constituent < ActiveRecord::Base
	has_many :calls
	belongs_to :org
	
	validates :first_name, :length => { :maximum => 40 }
	validates :last_name, :length => { :maximum => 40 }
	validates :street, :length => { :maximum => 100 }
	validates :zipcode, :length => { :maximum => 10 }
end
