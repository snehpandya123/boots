class Hr < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
         
         attr_accessor :login
         attr_accessible :password,:password_confirmation,:remember_me, :email , :username
          string_regex = /[a-z]+\z/i
         validates :username,
          :format => { :with => string_regex ,:message=> "must be string"},
  :uniqueness => {
    :case_sensitive => false
  }
end

