class User < ApplicationRecord
  has_one :social_media_link

  validates :first_name, presence: true, length: { maximum: 40 }
  validates :last_name, presence: true, length: { maximum: 40 }

  private

  def generate_random_id
    self.id = SecureRandom.uuid
  end
end
