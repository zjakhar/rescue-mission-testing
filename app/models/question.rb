class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 20}
  validates :body, presence: true, length: { minimum: 50 }

  has_many :answers
end
