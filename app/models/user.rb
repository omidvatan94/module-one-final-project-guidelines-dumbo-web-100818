class User < ActiveRecord::Base
  has_many :scores
  has_many :categories, through: :scores
end
