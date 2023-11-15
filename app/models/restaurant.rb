class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
