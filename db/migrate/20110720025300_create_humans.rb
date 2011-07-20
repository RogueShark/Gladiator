class CreateHumans < ActiveRecord::Migration
  def self.up
    create_table :humans do |t|
      t.string :name
      t.string :warriorType
      t.integer :health
      t.integer :magicka
      t.integer :fatigue
      t.integer :strength
      t.integer :endurance
      t.integer :wisdom
      t.integer :intelligence
      t.integer :speed
      t.integer :agility
      t.integer :defense
      t.boolean :hasWeapon
      t.boolean :hasShield
      t.integer :powerID

      t.timestamps
    end
  end

  def self.down
    drop_table :humans
  end
end
