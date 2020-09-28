class Wine < ApplicationRecord
  has_many :update_collections
  has_many :users, through: :update_collections
end
