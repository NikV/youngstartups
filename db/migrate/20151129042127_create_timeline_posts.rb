class CreateTimelinePosts < ActiveRecord::Migration
  def change
    create_table :timeline_posts do |t|
      t.references :user, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
