class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :email
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
