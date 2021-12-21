class RenameOrderDetaiToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    rename_table :order_detai, :order_details
  end
end
