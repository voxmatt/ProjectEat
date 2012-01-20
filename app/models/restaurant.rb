class Restaurant < ActiveRecord::Base
  # default ordering
  default_scope :order => 'Name'

  #relations
  has_many :list_items
  has_many :reviews
  
  # validation
  validates :Name, :presence => true, :uniqueness => true
  
end
