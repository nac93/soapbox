class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :choice_id
      t.integer :user_id

      t.timestamps
    end
  end
end
