class CreateProductTable < ActiveRecord::Migration
  def change
    create_table :products do |record|
      record.string  :name
      record.integer :price_in_cents
    end
  end
end
