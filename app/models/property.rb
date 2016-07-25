class Property < ApplicationRecord
  belongs_to :user
  belongs_to :request_property

  validates_presence_of :user, :request_property, :register, :repertory, :date_register

end
