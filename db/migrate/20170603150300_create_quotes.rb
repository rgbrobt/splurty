class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :saying1
      t.string :punchline
      t.string :author
      t.timestamps
    end
  end
end
