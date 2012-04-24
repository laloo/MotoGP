class Score < ActiveRecord::Base
	belongs_to :rider
	belongs_to :circuit
	
	validates :rider_id, :circuit_id, :position, presence: true
	validates :position, :numericality => { :only_integer => true, greater_than: 0 }
	validates :rider_id, :uniqueness => { :scope => :circuit_id, 
	:message => "-> Rider already taken in this circuit" }
	validates :position, :uniqueness => { :scope => :circuit_id, 
	:message => "-> Position already taken in this circuit" }

		
end
