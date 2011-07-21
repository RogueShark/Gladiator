class CreateHumans < ActiveRecord::Migration
  def self.up
    create_table :humans do |t|
      t.string :name
      t.string :warriorType, :default => "Slave"
      t.integer :health, :default => 30
      t.integer :magicka, :default => 30
      t.integer :fatigue, :default => 30
      t.integer :defense, :default => 30
      t.integer :strength, :default => 3
      t.integer :endurance, :default => 3
      t.integer :wisdom, :default => 3
      t.integer :intelligence, :default => 3
      t.integer :speed, :default => 3
      t.integer :agility, :default => 3
      t.boolean :hasWeapon, :default => false
      t.boolean :hasShield, :default => false
      t.integer :powerID

      t.timestamps
    end
  end

  def self.down
    drop_table :humans
  end
end
