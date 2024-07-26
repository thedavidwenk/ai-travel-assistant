class CreateIdeas < ActiveRecord::Migration[7.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :body
      t.string :url

      t.timestamps
    end
  end
end
