class ChangePasswordToNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :password, true
  end
end
