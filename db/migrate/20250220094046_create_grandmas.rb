class CreateGrandmas < ActiveRecord::Migration[7.1]
  def change
    create_table :grandmas do |t|
      t.string :title
      t.string :name
      t.string :bio
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.float :rating
      t.float :hourly_rate

      t.timestamps
    end
  end
end
