class Branch < ApplicationRecord
  belongs_to :parent, optional: true
  belongs_to :project
  belongs_to :board
end
