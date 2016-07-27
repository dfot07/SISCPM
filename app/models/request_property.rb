class RequestProperty < ApplicationRecord
  belongs_to :user
  has_many :property, dependent: :destroy
  has_many :appearer, dependent: :destroy
  has_many :petitioner, dependent: :destroy

  validates_presence_of :user, :certificate, :request_certificate, :comment, :sequence_request, :sequence_certificate
  
end
