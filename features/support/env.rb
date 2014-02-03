require_relative "../../lib/billing"
require "database_cleaner"

DatabaseCleaner.strategy = :transaction

Before do
  DatabaseCleaner.start
  @user = User.create(:email => "hoyt@jonmagic.com")
end

After do
  DatabaseCleaner.clean
end
