class CreateCats < ActiveRecord::Migration
  def up
  	create_table :cats do |t|
  		t.string :name
  		t.string :home_planet
  		t.string :tagline
  		t.string :superpower
  		end
  	end


  def down
  	drop_table :cats
  end

end
