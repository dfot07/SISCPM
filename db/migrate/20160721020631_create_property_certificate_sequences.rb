class CreatePropertyCertificateSequences < ActiveRecord::Migration[5.0]
  def change
    create_table :property_certificate_sequences do |t|
      t.references :user, foreign_key: true
      t.integer :sequence
      t.integer :date_sequence

      t.timestamps
    end
  end
end
