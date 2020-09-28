class Wine < ApplicationRecord
  has_many :update_collections, dependent: :destroy
  has_many :users, through: :update_collections
end
