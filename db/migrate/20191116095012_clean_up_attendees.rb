class CleanUpAttendees < ActiveRecord::Migration[6.0]
  def change
    add_column :attendees, :diet, :string
  end
end
