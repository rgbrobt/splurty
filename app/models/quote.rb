class Quote < ApplicationRecord
  validates :saying1, presence: true, length: { maximum: 140, minimum: 3 }
  validates :punchline, presence: true, length: { maximum: 50, minimum: 3 }
  validates :author, presence: true, length: { maximum: 50, minimum: 3 }
end
