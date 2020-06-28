class Comment < ApplicationRecord

  belongs_to :game  # tweetsテーブルとのアソシエーション
  belongs_to :user 
end
