class Address < ApplicationRecord

  belongs_to :game, optional: true
  validates :baseball_park, presence: true
  validates :prefectures, presence: true
  validates :municipality, presence: true
  validates :house_number, presence: true
end
