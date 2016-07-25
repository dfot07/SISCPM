class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.references :user, foreign_key: true
      t.references :request_property, foreign_key: true
      t.string :register
      t.string :repertory
      t.date :date_register

      t.timestamps
    end
  end
end
