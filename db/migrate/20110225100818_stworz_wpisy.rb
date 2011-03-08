class StworzWpisy < ActiveRecord::Migration
  def self.up
      create_table :wpisy do |t| 
        t.column :imie, :string, 
                  :limit => 30,
                  :null => false
        t.column :nazwisko, :string,
                  :limit => 30
        t.column :mail, :string,
                  :limit => 50,
                  :null => false 
        t.column :strona, :string, :limit => 50 
        t.column :tresc, :text, :null => false 
        t.column :data, :date
      end
    end

  def self.down
    drop_table :wpisy
  end
end
