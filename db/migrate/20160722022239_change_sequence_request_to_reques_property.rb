class ChangeSequenceRequestToRequesProperty < ActiveRecord::Migration[5.0]
  def change
    change_column :request_properties, :sequence_request, :integer
    change_column :request_properties, :sequence_certificate, :integer
  end
end
