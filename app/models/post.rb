class Post < ActiveRecord::Base
  belongs_to :user
  scope :approved, -> { where(approved: true) }
  delegate :name, :to => :user, :prefix => true

  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :body,  presence: true

  def to_param
    "#{id}-#{title.parameterize}"
  end

end
