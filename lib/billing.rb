require "active_record"
require "mysql2"
require "yaml"

environment     = ENV["DATABASE_ENV"] || "development"
database_config = YAML.load_file("config/database.yml")[environment]
ActiveRecord::Base.establish_connection database_config

require_relative "product"
require_relative "purchase"
require_relative "user"
