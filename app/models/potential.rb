class Potential < ApplicationRecord
  belongs_to :user, optional: true
  validates :bench_press, :squat, :deadlift ,presence: true
end
