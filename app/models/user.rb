class User < ApplicationRecord
  has_many :update_collections, dependent: :destroy
  has_many :wines, through: :update_collections

  accepts_nested_attributes_for :wines

  validates :name, :username, :password, :email, presence: true
  validates :username, :password, :email, uniqueness: true
end
