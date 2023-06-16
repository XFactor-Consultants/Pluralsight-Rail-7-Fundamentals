class CreateWikiPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :wiki_posts do |t|
      t.timestamps
    end
  end
end
