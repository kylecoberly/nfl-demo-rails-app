class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
     create_table :players do |t|
       t.string :first_name
       t.string :last_name
       t.string :position
       t.references :team
       t.timestamps
     end
    
  end
end
