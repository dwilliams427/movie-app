class AddImageUrlToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :image_url, :text
  end
end
