class CreateOrderItem < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string   "title"
      t.decimal  "price"
      t.integer "quantity"
      t.belongs_to :order

      t.timestamps
    end
  end
end
