class Call < ActiveRecord::Base
	has_one :campaign
	has_one :result
	
	belongs_to :constituent
	belongs_to :campaign
end
