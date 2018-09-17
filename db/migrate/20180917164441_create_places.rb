class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.string :good_for
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
