class AddSlugToUser < ActiveRecord::Migration
  def change
    add_column :users, :slug, :string, unique: true, index: true
  end
end
