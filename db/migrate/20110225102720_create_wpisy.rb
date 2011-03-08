class CreateWpisy < ActiveRecord::Migration
  def self.up
    create_table :wpisy do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :wpisy
  end
end
