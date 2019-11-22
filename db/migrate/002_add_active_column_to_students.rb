class AddActiveColumnToStudents < ActiveRecord::Migration
   # Add the column :active to the students table. Make it boolean and default to false
    def change
      add_column :students, :active, :boolean, default: false
    end
  end