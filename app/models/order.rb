class Order < ApplicationRecord
  enum payment_method: { credit_card: 0, transfer: 1 }
  enum order_status: { waitingfordeposit: 0, payment_confirmation: 1, production: 2, readyto_ship: 3, sent: 4 }

 belongs_to :customer
 has_many :order_details, dependent: :destroy
end