class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :content
      t.integer :topic_id

      t.timestamps
    end
  end
end
