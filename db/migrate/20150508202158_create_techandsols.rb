class CreateTechandsols < ActiveRecord::Migration
  def change
    create_table :techandsols do |t|
      t.string :Name
      t.string :Summary
      t.text :Description
      t.text :Owner
      t.text :Reviewed
      t.integer :Status_id
      t.text :Comments
      t.text :Action
      t.integer :ImpOwner_id

      t.timestamps null: false
    end
  end
end
