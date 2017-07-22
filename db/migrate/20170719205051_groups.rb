class Groups < ActiveRecord::Migration[5.1]
  def self.up
      create_table :groups do |t|
         t.column :name, :string, :limit => 32, :null => false
         t.column :debut, :date
		 t.column :labels, :string
		 t.column :members, :text
         t.column :genre_id, :integer
         t.column :description, :text
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :groups
   end
end
