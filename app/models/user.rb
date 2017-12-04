class User < ApplicationRecord

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :username, :presence => true
  validates :username, :uniqueness => true

  validates :password, :presence => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
