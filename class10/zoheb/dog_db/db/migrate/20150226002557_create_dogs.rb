class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
    	t.string :name
    	t.text :url
    end
  end
end
