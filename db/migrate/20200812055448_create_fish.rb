class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
    	t.string :fishing_title, null: false
    	t.string :fish_name, null: false
    	t.text :fishing_contents, null: false
    	t.date :fishing_date, null: false
    	t.integer :fish_size, null: false
    	t.integer :fish_weight, null: false
    	t.integer :prefectures, null: false, default: 0
    	t.string :fish_image_id
    	t.integer :user_id, null: false
      t.timestamps
    end
  end
end
