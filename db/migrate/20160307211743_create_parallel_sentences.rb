class CreateParallelSentences < ActiveRecord::Migration
  def change
    create_table :parallel_sentences do |t|
      t.string :sentence
      t.boolean :keep
      t.integer :times_clicked

      t.timestamps null: false
    end
  end
end
