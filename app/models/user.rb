class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  self.primary_key = :id

  validates_presence_of :firstName, :lastName, :email, :password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
