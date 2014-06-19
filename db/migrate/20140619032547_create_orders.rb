class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :company
      t.string :product
    end
  end
end
