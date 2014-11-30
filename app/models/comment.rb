class Comment < ActiveRecord::Base

  validates :name, :email, presence: true
  validates :email, uniqueness: true

  belongs_to :entry

end
