class Emp < ActiveRecord::Base

  has_many :requisitions
  has_many :pos, through: :requisitions
  has_many :poapps, through: :pos 
  has_many :realassets
  
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable,:lockable

           
         attr_accessor :login

         attr_accessible :password,:password_confirmation,:remember_me, :email , :username
         string_regex = /\A[a-z]+\z/i
         validates :username,
         :format => { :with => string_regex ,:message=> "must be string"},
          :uniqueness => {
    :case_sensitive => false
  }
end
 # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable