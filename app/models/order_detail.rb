class OrderDetail < ApplicationRecord
  enum created_status: {着手不可:0, 製作待ち:1, 製作中:2, 製作完了:3, 発送:4}
  belongs_to :order
  belongs_to :product
end
