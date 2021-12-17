class OrderDetai < ApplicationRecord
  enum created_status: {not_startable:0, waiting:1, production:2, complete:3}
  belongs_to :order
  belongs_to :product
end
