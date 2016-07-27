class ChangeTypeToAppearerAct < ActiveRecord::Migration[5.0]
  def change
    rename_column :appearer_acts, :type, :type_act
  end
end
