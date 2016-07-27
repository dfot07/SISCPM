class CreateAppearerActs < ActiveRecord::Migration[5.0]
  def change
    create_table :appearer_acts do |t|
      t.references :user
      t.references :request_act, foreign_key: true
      t.string :name
      t.string :type_appearer
      t.string :document
      t.string :class_appearer
      t.text :represent_appearer
      t.string :type

      t.timestamps
    end
  end
end
