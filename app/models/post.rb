class Post < ApplicationRecord

  # Ensure comments are delete when a post is delete
  has_many :comments, dependent: :destroy
  
  # Validations
  # validates :title, presence: true, length:{minimum: 5}
  # validates :body, presence: true
  validates  :title,presence:true, length: {minimum: 5}
  validates  :body, presence: true
end
