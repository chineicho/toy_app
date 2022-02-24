class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum:141 },
                      presence: true

end
