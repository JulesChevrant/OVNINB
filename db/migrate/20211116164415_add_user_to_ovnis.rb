class AddUserToOvnis < ActiveRecord::Migration[6.0]
  def change
    add_reference :ovnis, :user, null: false, foreign_key: true
  end
end
