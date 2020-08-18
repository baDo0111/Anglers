class ChangeDatatypeFishSizeOfFish < ActiveRecord::Migration[5.2]
  def change
  	change_column :fish, :fish_size, :float
  end
end
