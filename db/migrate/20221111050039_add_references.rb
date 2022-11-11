class AddReferences < ActiveRecord::Migration[7.0]
  def change
      add_reference :bookmarks, :movies
      add_reference :bookmarks, :lists
      change_column_null :bookmarks, :comment, false
  end
end
