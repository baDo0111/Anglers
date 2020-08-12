class CreateFishComments < ActiveRecord::Migration[5.2]
  def change
    create_table :fish_comments do |t|
    	t.string :comment
    	t.integer :user_id
    	t.integer :fish_id

      t.timestamps
    end
  end
end
