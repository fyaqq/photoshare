class CreateSlideshows < ActiveRecord::Migration
  def self.up
    create_table :slideshows do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :slideshows
  end
end
