class Genres < ActiveRecord::Migration[5.1]
  def self.up
      
      create_table :genres do |t|
         t.column :name, :string
      end
	
      Genre.create :name => "Kpop"
      Genre.create :name => "Trot"
      Genre.create :name => "Khip-hop"
      Genre.create :name => "Krock"
      Genre.create :name => "Solo Artist"
   end

   def self.down
      drop_table :genres
   end
end
