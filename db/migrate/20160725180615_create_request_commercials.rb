class CreateRequestCommercials < ActiveRecord::Migration[5.0]
  def change
    create_table :request_commercials do |t|
      t.references :user, foreign_key: true
      t.string :certificate
      t.string :request_certificate
      t.string :comment
      t.integer :sequence_request
      t.integer :sequence_certificate
      t.integer :date_sequence
      t.integer :date_certificate
      t.string :other_type
      t.string :other_certificate

      t.timestamps
    end
  end
end
