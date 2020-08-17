class Phone < ApplicationRecord
  validates :name, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :url, presence: true
  validates :price, presence: true
  validates :seller, presence: true
end