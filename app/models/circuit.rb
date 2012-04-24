class Circuit < ActiveRecord::Base
	has_many :scores
	has_many :riders, :through => :scores
	
	validates :name, :length, :nationality, :date, presence: true
	#validates :name, :nationality, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }
	validates :length, :numericality => true	

	
end
