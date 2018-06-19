class Post < ApplicationRecord

  # Validations
  # validates :title, presence: true, length:{minimum: 5}
  # validates :body, presence: true
  validates  :title,presence:true, length: {minimum: 5}
  validates  :body, presence: true
end
