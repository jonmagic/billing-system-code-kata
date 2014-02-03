require "spec_helper"

describe User do
  let!(:user)   { User.create(:email => "hoyt@jonmagic.com") }
  let(:product) { Product.create(:name => "Text Editor", :price_in_cents => 1_00) }

  describe "#purchase" do
    it "creates purchase with user and product" do
      purchase = user.purchase(product)

      expect(purchase).to be_persisted
      expect(purchase.user).to eq(user)
      expect(purchase.product).to eq(product)
    end
  end

  describe "#can_use?" do
    it "returns true if user has purchased product" do
      user.purchase(product)
      expect(user.can_use?(product)).to be_true
    end

    it "returns false if user has not purchased product" do
      expect(user.can_use?(product)).to be_false
    end
  end
end
