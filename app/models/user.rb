class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :cards
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
