class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
     has_many :answers , dependent: :destroy
     has_many :comments, dependent: :destroy
     has_many :titles  , dependent: :destroy
     has_many :drills  , dependent: :destroy
     has_many :communications  , dependent: :destroy
     has_many :reviews , dependent: :destroy
end
