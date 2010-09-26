class AddDescToPhotos < ActiveRecord::Migration
  def self.up
    add_column :photos, :thumbnail, :string
    add_column :photos, :description, :string

    Photo.all.each do |photo|
      photo.update_attribute :thumbnail, photo.filename.gsub('.','_t.')
    end
  end

  def self.down
    remove_column :photos, :description
    remove_column :photos, :thumbnail
  end
end
