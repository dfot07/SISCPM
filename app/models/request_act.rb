class RequestAct < ApplicationRecord
  belongs_to :user
  has_many :appearer_act, dependent: :destroy

  validates_presence_of :user_id, :type_act, :date_act, :description_act, :amount_act, :entity, :city_entity, :sequence, :date_sequence

end
