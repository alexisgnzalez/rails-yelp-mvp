class ChangeCategoryToRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :cathegory, :category
  end
end
