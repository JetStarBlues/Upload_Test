class AddColumnsToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :name, :string
    add_column :pictures, :image, :string
  end

  def self.down
    remove_column :pictures, :image
    remove_column :pictures, :name
  end
end
