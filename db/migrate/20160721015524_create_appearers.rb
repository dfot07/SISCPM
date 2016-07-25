class CreateAppearers < ActiveRecord::Migration[5.0]
  def change
    create_table :appearers do |t|
      t.references :user, foreign_key: true
      t.references :request_property, foreign_key: true
      t.string :last_name
      t.string :name
      t.string :civil_status

      t.timestamps
    end
  end
end
