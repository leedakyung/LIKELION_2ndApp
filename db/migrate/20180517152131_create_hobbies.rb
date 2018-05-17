class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :kind
      t.belongs_to :owner
      t.timestamps null: false
    end
  end
end
