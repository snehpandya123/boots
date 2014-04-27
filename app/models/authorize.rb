class Authorize < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:lockable,:confirmable
         
         attr_accessor :email
          string_regex = /\A[a-z]+\z/i
         attr_accessible :password,:password_confirmation,:remember_me, :email , :username
         validates :username,

          :format => { :with => string_regex ,:message=> ":->must not include any blank space,numerical, Only string is valid"},
                   :uniqueness => {:case_sensitive => false}
 end
