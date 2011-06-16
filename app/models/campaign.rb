class Campaign < ActiveRecord::Base
	has_many :targets
	has_many :calls
	
	belongs_to :org
	
	validates :name, :length => { :maximum => 100 }
	validates :description, :length => { :maximum => 300 }
end
