class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    # First we create a table called students to hold our students
    create_table :students do |t|
      # Then within that table we create columns for a birthdate and a name
      t.date :birthdate
      t.string :name
    end
  end
end
