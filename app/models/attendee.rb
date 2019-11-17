class Attendee < ApplicationRecord
    validates :name, presence: true,
    length: { minimum: 2 }

   
    # validates :name, inclusion: { in: %w(Molly),
    # message: "%{value} is not a valid size" }

end
