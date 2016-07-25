class CreateRequestProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :request_properties do |t|
      t.references :user, foreign_key: true
      t.string :certificate
      t.string :request_certificate
      t.string :comment
      t.string :sequence_request
      t.string :sequence_certificate

      t.timestamps
    end
  end
end
