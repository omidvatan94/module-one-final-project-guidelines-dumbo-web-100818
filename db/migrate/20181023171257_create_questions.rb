class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
      create_table :questions do |t|
          t.string :question
          t.string :answer
          t.string :politican_name
      end
  end
end
