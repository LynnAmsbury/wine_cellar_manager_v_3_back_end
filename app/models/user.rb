class User < ApplicationRecord
  has_many :update_collections
  has_many :wines, through: :update_collections
end
