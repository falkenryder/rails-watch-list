class AddRestrictAndFixTypo < ActiveRecord::Migration[7.0]
  def change
    change_table :bookmarks do |t|
      t.rename :movies_id, :movie_id
      t.rename :lists_id, :list_id
    end
    add_foreign_key :bookmarks, :movies, on_delete: :restrict
  end
end
