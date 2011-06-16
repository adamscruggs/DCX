class Result < ActiveRecord::Base
	has_one :outcome
	
	belongs_to :call
end
