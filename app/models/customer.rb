class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
 has_many :addresses, dependent: :destroy
 has_many :orders
 has_many :cart_products, dependent: :destroy

# 退会機能
  def active_for_authentication?
    super && (self.is_valid == false)
  end

end
