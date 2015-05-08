class CreateImpOwners < ActiveRecord::Migration
  def change
    create_table :imp_owners do |t|
      t.string :ImperativeOwner

      t.timestamps null: false
    end
  end
end
