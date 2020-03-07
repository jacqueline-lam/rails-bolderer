class Problem < ApplicationRecord
  belongs_to :wall
  has_many :sends
  has_many :users, through: :sends
  has_many :problem_styles
  has_many :styles, through: :problem_styles
end
