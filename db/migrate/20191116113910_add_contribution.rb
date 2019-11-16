class AddContribution < ActiveRecord::Migration[6.0]
  def change
    add_column :attendees, :contribution, :string
    add_column :attendees, :message, :text
  end
end
