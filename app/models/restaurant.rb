class Restaurant < ActiveRecord::Base
  # default ordering
  default_scope :order => 'name'
  
  # validation
  validates :Name, :presence => true, :uniqueness => true
end
