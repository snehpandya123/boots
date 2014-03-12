class Emp < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 

           
         attr_accessor :login
         attr_accessible :password,:password_confirmation,:remember_me, :email , :username
         validates :username,
  :uniqueness => {
    :case_sensitive => false
  }
end
