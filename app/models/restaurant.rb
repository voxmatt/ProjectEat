class Restaurant < ActiveRecord::Base
  validates :Name, :presence => true, :uniqueness => true
end
