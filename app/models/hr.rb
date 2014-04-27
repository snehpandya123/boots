class Hr < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :realassets
  has_many :vendors
  has_many :poapps
  has_many :locations
  has_many :emps
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
         
         attr_accessor :login
         attr_accessible :password,:password_confirmation,:remember_me, :email , :username
          string_regex = /\A[a-z]+\z/i
         validates :username,
          :format => { :with => string_regex ,:message=> ":must not include any blank space,numerical, Only string is valid"},
                   :uniqueness => {:case_sensitive => false}
  
end

