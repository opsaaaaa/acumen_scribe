class Branch < ApplicationRecord
  belongs_to :parent
  belongs_to :project
  belongs_to :board
end
