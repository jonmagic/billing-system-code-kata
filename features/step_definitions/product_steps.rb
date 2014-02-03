Given(/^I find the software "(.*?)"$/) do |product_name|
  @product = Product.find_by_name(product_name)
end
