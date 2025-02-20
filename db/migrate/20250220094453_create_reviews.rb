class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :booking, null: true, foreign_key: true
      t.string :content
      t.float :rating
      t.references :grandma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
