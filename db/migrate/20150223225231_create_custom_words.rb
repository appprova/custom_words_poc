class CreateCustomWords < ActiveRecord::Migration
  def change
    create_table :custom_words do |t|
      t.string :key
      t.string :word
      t.integer :user_id

      t.timestamps
    end
  end
end
