class User < ApplicationRecord
    before_save { self.email = self.email.downcase}
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :email, uniqueness: true
    has_secure_password
    validates :password, presence: true, length: { minimum: 8 }
end
