class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :title1
      t.text :content1
      t.string :title2
      t.text :content2
      t.string :title3
      t.text :content3

      t.timestamps
    end
  end
end
