class ChangeDatatypeFishWeightOfFish < ActiveRecord::Migration[5.2]
  def change
  	change_column :fish, :fish_weight, :float
  end
end
