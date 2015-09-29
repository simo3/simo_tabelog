class Review < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user

  scope :latest, -> { order(created_at: :desc).limit(5) }
end
