class User < ApplicationRecord
            # Include default devise modules.
            devise :database_authenticatable, :registerable,
                    :recoverable, :rememberable, :trackable, :validatable,
                    :confirmable, :omniauthable
            include DeviseTokenAuth::Concerns::User
  has_many :todos, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
end
