class Main < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event
  belongs_to :weight
  belongs_to :number
  belongs_to :sets
  belongs_to :user
  has_one_attached :image
  validates :event_id, numericality: { other_than: 1 }
end
