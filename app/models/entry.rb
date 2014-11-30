class Entry < ActiveRecord::Base

  validates :day, presence: true
  validates :day, uniqueness: true
  validates :day, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }

  has_many :comments

end
