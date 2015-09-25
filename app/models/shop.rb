class Shop < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
  #def average_rate
     #分子 = レストランにレビューを投稿したユーザーから、rateだけを抜き取って配列化し、足し上げている
     #分母 = レストランにレビューを投稿したユーザーの数
    #average = self.reviews.pluck(:rate).sum / self.reviews.count(:shop_id)
  #end
end
