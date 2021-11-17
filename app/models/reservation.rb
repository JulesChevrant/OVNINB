class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :ovni

  validates :dates, presence: true
end
