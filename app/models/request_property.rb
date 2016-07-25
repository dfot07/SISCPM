class RequestProperty < ApplicationRecord
  belongs_to :user
  has_many :property
  has_many :appearer
  has_many :petitioner

  validates_presence_of :user, :certificate, :request_certificate, :comment, :sequence_request, :sequence_certificate
  
end
