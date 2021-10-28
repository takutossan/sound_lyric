class Lyric < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :lyric, presence: true
end
