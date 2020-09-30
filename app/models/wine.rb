class Wine < ApplicationRecord
  has_many :update_collections, dependent: :destroy
  has_many :users, through: :update_collections

  validates :variety, :producer, :region, :vintage, presence: true
  validates :vintage, numericality: true
end
