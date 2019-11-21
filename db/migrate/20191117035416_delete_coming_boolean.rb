class DeleteComingBoolean < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendees, :coming, :boolean
  end
end
