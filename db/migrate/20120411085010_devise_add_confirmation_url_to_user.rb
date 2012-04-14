class DeviseAddConfirmationUrlToUser < ActiveRecord::Migration
  def up
    add_column :users, :confirmation_url, :string
  end

  def down
  end
end
