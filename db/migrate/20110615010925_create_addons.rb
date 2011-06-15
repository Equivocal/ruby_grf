class CreateAddons < ActiveRecord::Migration
  def self.up
    create_table :addons do |t|
      t.string :name
      t.text :description
      t.string :filename
      t.string :location
      t.integer :dls
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :addons
  end
end
