class AddAuthorToWikiPost < ActiveRecord::Migration[7.0]
  def change
    add_column :wiki_posts, :author, :string
  end
end
