class Restaurant < ActiveRecord::Base
  # default ordering
  default_scope :order => 'Name'
  
  # validation
  validates :Name, :presence => true, :uniqueness => true
end
