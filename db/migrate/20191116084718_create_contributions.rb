class CreateContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :contributions do |t|
      t.boolean :contribution
      t.text :details
      t.references :attendee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
