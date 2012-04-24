class Team < ActiveRecord::Base
  has_many :riders
  
  validates :name, :colors, :nationality, presence: true
  #validates :name, :colors, :nationality, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }


end
