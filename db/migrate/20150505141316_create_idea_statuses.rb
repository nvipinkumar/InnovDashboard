class CreateIdeaStatuses < ActiveRecord::Migration
  def change
    create_table :idea_statuses do |t|
      t.string :Status      

      t.timestamps null: false
    end
  end
end
