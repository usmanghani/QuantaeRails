class DeviseAddConfirmableAndLockable < ActiveRecord::Migration
  def up
    ## Confirmable
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users,  :confirmation_sent_at, :datetime

    ## Lockable
    add_column :users, :failed_attempts, :integer, :default => 0 # Only if lock strategy is :failed_attempts
    add_column :users, :unlock_token, :string # Only if unlock strategy is :email or :both
    add_column :users, :locked_at, :datetime

    add_index :users, :confirmation_token,   :unique => true
    add_index :users, :unlock_token,         :unique => true

  end

  def down
  end
end
