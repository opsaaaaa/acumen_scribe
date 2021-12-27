class Branch < ApplicationRecord
  acts_as_nested_set
  belongs_to :parent, optional: true
  belongs_to :project
  belongs_to :board
end
