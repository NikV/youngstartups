class AddAcceptedBooleanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :accepted, :boolean, default: false, null: false
  end
end
