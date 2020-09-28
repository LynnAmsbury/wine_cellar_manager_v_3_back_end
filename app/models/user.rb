class User < ApplicationRecord
  has_many :update_collections, dependent: destroy
  has_many :wines, through: :update_collections
end
