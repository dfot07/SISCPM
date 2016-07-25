class CreateRequestSequenceProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :request_sequence_properties do |t|
      t.references :user, foreign_key: true
      t.integer :sequence
      t.integer :date_sequence

      t.timestamps
    end
  end
end
