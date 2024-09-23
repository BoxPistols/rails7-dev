class Question < ApplicationRecord
  # validate
  validates :title, presence: true
  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
