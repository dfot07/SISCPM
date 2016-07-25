class CreatePetitioners < ActiveRecord::Migration[5.0]
  def change
    create_table :petitioners do |t|
      t.references :user, foreign_key: true
      t.references :request_property, foreign_key: true
      t.string :last_name
      t.string :name
      t.string :document
      t.string :civil_status
      t.string :address
      t.integer :phone
      t.string :email
      t.string :infodigital

      t.timestamps
    end
  end
end
