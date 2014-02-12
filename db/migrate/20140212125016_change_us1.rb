class ChangeUs1 < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    add_column :users, :name, :string
  end
end
