class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title, Null: false
      t.string :body, Null: false

      t.timestamps
    end
  end
end

# Model.created_at.strftime("%FT%T")
