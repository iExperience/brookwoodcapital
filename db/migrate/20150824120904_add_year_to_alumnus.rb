class AddYearToAlumnus < ActiveRecord::Migration
  def change
    add_column :alumni, :year, :string
  end
end
