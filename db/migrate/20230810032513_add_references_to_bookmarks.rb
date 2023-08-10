class AddReferencesToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :movies, foreign_key: true
    add_reference :bookmarks, :lists, foreign_key: true
  end
end
