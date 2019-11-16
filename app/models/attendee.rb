class Attendee < ApplicationRecord
    has_many :contributions, dependent: :destroy

    validates :name, presence: true,
    length: { minimum: 2 }
end
