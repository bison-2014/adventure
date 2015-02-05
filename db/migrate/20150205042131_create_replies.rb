class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :text
      t.integer :replier_id
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
