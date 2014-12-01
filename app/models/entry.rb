class Entry < ActiveRecord::Base

  validates :day, presence: true
  validates :day, uniqueness: true
  validates :day, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }

  has_many :comments

  def url_holarse_link
    embed_to_link(url_holarse)
 end

  def url_gtuxtv_link
    embed_to_link(url_gtuxtv)
  end

  private

  def embed_to_link(video)
    video.gsub(/embed\//,"watch?v=")
  end

end
