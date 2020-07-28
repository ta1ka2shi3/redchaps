class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :games
  has_many :comments

  validates :team_name, presence: true
  validates :email, uniqueness: true
  # validates :email, :email_format => {:message => '正しいメールアドレスを入力してください'}
  validates :last_name_kana, presence: true, length: { maximum: 35 },format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
  validates :first_name_kana, presence: true, length: { maximum: 35 }, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
  validates :last_name, presence: true, length: { maximum: 35 }
  validates :first_name, presence: true, length: { maximum: 35 }
  validates :phone_number, presence: true, length: { in: 10..12  }, format: { with: /\A\d{10,11}\z/, message: '10-11桁でハイフン（-）を入れないで下さい。'}
  validates :phone_number, uniqueness: true
  validates :birthday, presence: true
end


#validates :last_name_kana, presence: true, length: { maximum: 35 }, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'の入力はカタカナで入力して下さい。'}
  #validates :first_name_kana, presence: true, length: { maximum: 35 }, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'の入力はカタカナで入力して下さい。'}
  #validates :last_name, presence: true, length: { maximum: 35 }, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "の入力は日本語でお願いします。"}
  #validates :first_name, presence: true, length: { maximum: 35 }, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'の入力は日本語でお願いします。'}
  #validates :phone_number, presence: true, length: { in: 10..12  }, format: { with: /\A\d{10,11}\z/, message: '10-11桁でハイフン（-）を入れないで下さい。'}
  #validates :birthday, presence: true