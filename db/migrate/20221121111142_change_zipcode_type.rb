class ChangeZipcodeType < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :zipcode, :string
  end
end
