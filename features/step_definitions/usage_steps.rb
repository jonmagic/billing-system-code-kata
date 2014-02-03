Then(/^I can use "(.*?)"$/) do |product_name|
  product = Product.find_by_name(product_name)
  @user.can_use?(product)
end
