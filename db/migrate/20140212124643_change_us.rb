class ChangeUs < ActiveRecord::Migration
  def change
    change_column :users, :name, :string
  end
end
