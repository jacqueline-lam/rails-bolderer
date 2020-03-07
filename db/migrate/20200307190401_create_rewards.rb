class CreateRewards < ActiveRecord::Migration[6.0]
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :points
      t.interer :user_id

      t.timestamps
    end
  end
end
