class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hostel

  validates :emoji, presence: true

  def emoji_type(emoji)
    case emoji
    when "bad experience"
      😥
    when "normal experience"
      😐
    when "fun experience"
      😛
    when "amazing experience"
      😍
    end
  end

end
