class CreatePoliticians < ActiveRecord::Migration[5.0]
  def change
    create_table :policians do |t|
      t.string :name
      t.string :party
    end
  end
end
