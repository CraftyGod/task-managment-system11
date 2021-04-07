class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  self.primary_key = :id

  validates_format_of :firstName, :with => /^[^0-9`!@#\$%\^&*+_=]+$/, :multiline => true
  validates_format_of :lastName, :with => /^[^0-9`!@#\$%\^&*+_=]+$/, :multiline => true
  validates_presence_of :email, :password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
