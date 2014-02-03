class CreatePurchaseTable < ActiveRecord::Migration
  def change
    create_table :purchases do |record|
      record.integer  :user_id
      record.integer  :product_id
      record.datetime :created_at
    end
  end
end
