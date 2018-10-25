class CreateScore < ActiveRecord::Migration[5.0]
  def change
      create_table :scores do |t|
          t.integer :score
          t.integer :user_id
          t.integer :category_id
      end
  end
end
