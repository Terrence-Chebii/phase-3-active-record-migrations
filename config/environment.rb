ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/models/artist"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/artists.sqlite"
)

