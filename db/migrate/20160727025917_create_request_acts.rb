class CreateRequestActs < ActiveRecord::Migration[5.0]
  def change
    create_table :request_acts do |t|
      t.references :user, foreign_key: true
      t.string :type_act
      t.date :date_act
      t.string :description_act
      t.string :amount_act
      t.string :entity
      t.string :city_entity
      t.integer :sequence
      t.integer :date_sequence

      t.timestamps
    end
  end
end
