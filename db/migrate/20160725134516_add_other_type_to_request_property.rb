class AddOtherTypeToRequestProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :request_properties, :other_type, :string
  end
end
