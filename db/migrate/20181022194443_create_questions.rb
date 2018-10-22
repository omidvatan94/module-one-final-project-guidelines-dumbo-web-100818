class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :username
      t.string :name
      t.string :party
      t.integer :user_score
    end 
  end
end
