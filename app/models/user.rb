class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         enum role: [:admin, :customer, :seller]
        
         extend FriendlyId
         friendly_id :name, use: :slugged

 has_one :cart 
 has_one :order

end
