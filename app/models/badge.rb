class Badge < ApplicationRecord
    RULES = %w[first category level]

    has_many :user_badges, dependent: :destroy
    has_many :users, through: :user_badges
      
    validates :title, :image, :rule, :rule_value, discription presence: true
    
end
