class Employe < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
         
         attr_accessor :login
         attr_accessible :password,:password_confirmation,:remember_me, :email , :username
         validates :username,
  :uniqueness => {
    :case_sensitive => false
  }
end
