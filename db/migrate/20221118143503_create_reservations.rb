class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :billet_number
      t.integer :reservation_number
      t.datetime :reservation_date
      t.datetime :reservation_hour
      t.integer :spectacle_key
      t.string :spectacle
      t.integer :representation_key
      t.string :representation
      t.datetime :representation_date
      t.datetime :representation_hour
      t.datetime :representation_end_date
      t.datetime :representation_end_hour
      t.integer :price
      t.string :product_type
      t.string :sale_company
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :adress
      t.integer :zipcode
      t.string :country
      t.integer :age
      t.string :gender


      t.timestamps
    end
  end
end
