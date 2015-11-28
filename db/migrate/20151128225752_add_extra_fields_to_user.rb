class AddExtraFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :will_contribute, :text
    add_column :users, :looking_for, :text
    add_column :users, :referred_from, :string
    add_column :users, :bio, :text
    add_column :users, :tagline, :string
  end
end
