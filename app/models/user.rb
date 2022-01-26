class User < ApplicationRecord
  has_many :test_users
  has_many :tests, through: :test_users

  def user_level_tests(level)
    tests.where(level: level)
  end

end
