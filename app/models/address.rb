class Address < ApplicationRecord
  belongs_to :game, optional: true
  validates :prefectures, presence: true
  validates :postal_code, presence: true, format: { with: /\A\d{3}-\d{4}\z/, message: 'のフォーマットが不適切です。記述例 000-0000'}
  validates :municipality, presence: true
  validates :house_number, presence: true
end
