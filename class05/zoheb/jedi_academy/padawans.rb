require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")

# go...
# padawans (tablename) the database name is lowercase snake_case_plural
# Padawan (class name) CamelCaseSingular

class Padawan < ActiveRecord::Base
	
end
binding.pry