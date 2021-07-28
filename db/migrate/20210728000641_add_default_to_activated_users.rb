class AddDefaultToActivatedUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :activated, false
  end
end
