class Goal < ApplicationRecord
  include CommonModule
  enum status: { active: 0, pending: 1, done: 2, fail: 3 }
  validates :title, presence: true

  has_many :stages, dependent: :destroy
end
