class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy             # just like a sentence
  validates :title, presence: true,
            length: { minimum: 5 }
end