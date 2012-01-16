class List < ActiveRecord::Base
  has_many :list_items, :dependent => :destroy
end

def total_items
  list_items.sum(:quantity)
end