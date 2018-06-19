class Post < ApplicationRecord

  # Validations
  validates_presence_of  :title
  validates_presence_of  :body
end
