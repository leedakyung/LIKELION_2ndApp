class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :owner
      #t.integer    : Owner_id
      #t.reference  : owner
      #t.belongs_to : owner
      t.timestamps null: false
    end
  end
end
