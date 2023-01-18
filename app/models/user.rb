class User < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :email,   case_sensitive: false
  validates_presence_of :email
  validates_uniqueness_of :api_key,   confirmation: true
  has_many :favorites
end
