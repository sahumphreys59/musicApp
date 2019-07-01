class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, 
         :omniauth_providers => [:spotify]


   def email_required?
      false
   end       


  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.nickname = auth.info.nickname
    end      
  end 




 #  {"name"=>"Sarah Humphreys",
 # "nickname"=>"12146869956",
 # "email"=>nil,
 # "urls"=>{"spotify"=>"https://open.spotify.com/user/12146869956"},
 # "image"=>"https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/64237054_2300005493379054_9117835542111715328_n.jpg?_nc_cat=104&_nc_ht=scontent.xx&oh=a7f5e1227e4ef8529e0d640c19799d15&oe=5D85422F",
 # "birthdate"=>nil,
 # "country_code"=>nil,
 # "product"=>nil,      
         
end
