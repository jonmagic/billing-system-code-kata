class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |record|
      record.string :email
    end
  end
end
