class ChangeLastNameToAppearer < ActiveRecord::Migration[5.0]
  def change
  	change_column :appearers, :last_name, :text
  end
end
