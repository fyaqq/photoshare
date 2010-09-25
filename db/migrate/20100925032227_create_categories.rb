class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
    create_table("categories_photos", :id=>false) do |t|
      t.column "category_id", :integer
      t.column "photo_id", :integer
    end
    Category.new do |category|
      category.name = "All"
      Photo.find(:all).each do |photo|
        photo.categories << category
        photo.save
      end
    end
  end

  def self.down
    drop_table :categories
  end
end
