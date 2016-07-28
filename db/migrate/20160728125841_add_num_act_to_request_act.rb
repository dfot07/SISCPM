class AddNumActToRequestAct < ActiveRecord::Migration[5.0]
  def change
    add_column :request_acts, :num_act, :string
  end
end
