class CreateUserAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :user_agents do |t|
      t.string :name
      t.integer :visits_count, default: 0

      t.timestamps
    end
  end
end
