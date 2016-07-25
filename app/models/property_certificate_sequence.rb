class PropertyCertificateSequence < ApplicationRecord
  belongs_to :user

  validates_presence_of :user, :sequence, :date_sequence

end
