class User < ApplicationRecord
  has_one :account

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :username, :presence => true
  validates :username, :uniqueness => true

  validates_confirmation_of :password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def update
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
    end
    super
  end

end
