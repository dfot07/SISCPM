class SequenceAct < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :sequence, :date_sequence

end
