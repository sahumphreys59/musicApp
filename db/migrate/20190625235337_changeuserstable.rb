class Changeuserstable < ActiveRecord::Migration[5.2]
  def change
  	change_column_null :users, :email, :string, :null => true
  end
end
