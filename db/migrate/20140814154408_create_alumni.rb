class CreateAlumni < ActiveRecord::Migration
  def change
    create_table :alumni do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :college
      t.string :gender
      t.string :major
      t.text :quote
      t.attachment :picture

      t.timestamps
    end
  end
end
