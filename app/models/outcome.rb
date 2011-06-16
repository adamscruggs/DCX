class Outcome < ActiveRecord::Base
	belongs_to :result
	validates :description, :length => { :maximum => 40 }
end
