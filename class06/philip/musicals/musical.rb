require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "philipengles",
  :password => "",
  :database => "broadway_db"
)

class Musical < ActiveRecord::Base
end

class Song < ActiveRecord::Base
end

binding.pry