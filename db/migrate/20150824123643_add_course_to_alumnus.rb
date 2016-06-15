class AddCourseToAlumnus < ActiveRecord::Migration
  def change
    add_column :alumni, :course, :string
  end
end
