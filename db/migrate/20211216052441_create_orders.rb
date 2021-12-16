class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.string :post_code,       null: false
      t.string :address,         null: false
      t.string :name,            null: false
      t.integer :shipping_cost,  null: false
      t.integer :billing_amount, null: false
      enum payment_method: { credit_card: 0, transfer: 1 }
      enum order_status: { waitingfordeposit: 0, payment_confirmation: 1, production: 2, readyto_ship: 3, sent: 4 }

      t.timestamps null: false
    end
  end
end
