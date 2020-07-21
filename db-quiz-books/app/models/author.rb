class Author < ActiveRecord::Base
  has_many :books
  # def books
  #   Book.where(author_id: id)
  # end
  has_many :readings, through: :books
  has_many :users, through: :readings
  # Now we can use `author.readings` & `author.users`

  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
end
