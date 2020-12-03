class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation


  validates :title, :url, :user, presence: true
  validates :title, presence: true, length: { minimum: 5 }
end

# validates :ltitle, length: { minimum: 5 }
