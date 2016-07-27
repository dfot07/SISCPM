class AppearerAct < ApplicationRecord
  belongs_to :user
  belongs_to :request_act

  validates_presence_of :user, :request_act_id, :name, :type_appearer, :document, :class_appearer, :represent_appearer, :type_act

end
