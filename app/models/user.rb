class User < ActiveRecord::Base
  has_many :questions
  has_many :politicians, through: :questions
end
