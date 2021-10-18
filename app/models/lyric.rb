class Lyric < ApplicationRecord
  belongs_to :users
  validates :title, presence: true
  validates :lyric, presence: true
end
