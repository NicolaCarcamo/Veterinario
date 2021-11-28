class AddFullnameToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :fullname, :string
  end
end
