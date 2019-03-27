class AddVideoUrlToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :vid_url, :string
  end
end
