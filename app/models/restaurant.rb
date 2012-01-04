class Restaurant < ActiveRecord::Base
  # default ordering
  default_scope :order => 'Name'

  #relations
  has_many :list_items
  before_destroy :ensure_not_referenced_by_any_list_item
  
  # validation
  validates :Name, :presence => true, :uniqueness => true
  
  private
  
    # ensure that here are no line items referenceing this product
    def ensure_not_referenced_by_any_list_item
      if list_items.empty?
        return true
      else
        errors.add(:base, 'List Items Present')
        return false
      end
    end
  
end
