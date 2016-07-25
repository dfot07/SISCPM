class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :request_property
  has_many :property
  has_many :appearer
  has_many :petitioner
  has_many :request_sequence_property
  has_many :property_certificate_sequence

end
