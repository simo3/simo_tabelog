class Shop < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def ave_rate
   average = self.reviews.average(:rate)
   if average == nil
     return 0
   else
     return average
   end
 end
end
