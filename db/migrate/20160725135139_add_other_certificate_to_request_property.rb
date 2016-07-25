class AddOtherCertificateToRequestProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :request_properties, :other_certificate, :string
  end
end
