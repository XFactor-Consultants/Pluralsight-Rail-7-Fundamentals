class AddTitleToWikiPost < ActiveRecord::Migration[7.0]
  def change
    add_column :wiki_posts, :title, :string
  end
end
