class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
    	t.string :name
    	t.string :user_name
    	t.text :password
    	t.text :additional_info

      t.timestamps
    end
  end
end
