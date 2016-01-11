class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  delegate :name, :to => :user, :prefix => true
  delegate :title, :to => :post, :prefix => true

  validates :body, presence: true,
                    length: { minimum: 5 }
end
