class AddBooleanEnglishToMovie < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, "boolean USING english::boolean"
  end
end
