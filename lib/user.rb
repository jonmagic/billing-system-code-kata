class User < ActiveRecord::Base
  has_many :purchases

  def purchase(product)
    purchases.create(:product => product)
  end

  def can_use?(product)
    purchases.detect {|p| p.product == product }
  end
end
