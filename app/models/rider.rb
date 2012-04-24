class Rider < ActiveRecord::Base
  belongs_to :team
  has_many :scores
  has_many :circuits, :through => :scores
  
  validates :name, :surname, :date_of_birth, :nationality, :team_id, presence: true
  #validates :name, :surname, :nationality, :format => { :with => /\A[a-zA-Z]+ \z/,   :message => "-> Only letters allowed" }
  validates :name, :uniqueness => { :scope => :surname, 
	:message => "-> Rider already exists" }
  
  
  def full_name
  	[ self.name, self.surname ].compact.join(' ')
  end
  
end
