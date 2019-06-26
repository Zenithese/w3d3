class CreateVisit < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :number_of_visits
      t.integer :user_id, null:false
      t.integer :shortened_url_id, null:false
      t.timestamps
    end
  end
end
