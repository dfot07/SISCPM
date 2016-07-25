class AddDateSequenceToRequestProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :request_properties, :date_sequence, :integer
    add_column :request_properties, :date_certificate, :integer
  end
end
