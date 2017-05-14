class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  before_create :skip_confirmation!
  validates :email, :uniqueness => true
  include DeviseTokenAuth::Concerns::User
end
