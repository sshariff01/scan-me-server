class User < ApplicationRecord
  has_one :social_media_link
  attr_accessor :first_name, :last_name, :email, :password
  before_create :generate_random_id

  validates :first_name, presence: true, length: { maximum: 40 }
  validates :last_name, presence: true, length: { maximum: 40 }

  private

  def generate_random_id
    self.id = SecureRandom.uuid
  end
end
