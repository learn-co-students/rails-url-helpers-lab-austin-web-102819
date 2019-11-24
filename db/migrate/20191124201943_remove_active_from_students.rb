class RemoveActiveFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :active, :boolen
  end
end
