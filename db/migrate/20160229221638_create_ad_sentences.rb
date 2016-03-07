class CreateAdSentences < ActiveRecord::Migration
  def change
    create_table :ad_sentences do |t|
      t.string :sentence
      t.integer :clicked

      t.timestamps null: false
    end
  end
end
