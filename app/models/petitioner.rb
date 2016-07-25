class Petitioner < ApplicationRecord
  belongs_to :user
  belongs_to :request_property

  validates_presence_of :user, :request_property, :last_name, :name, :document, :civil_status, :address, :phone, :email, :infodigital

end
