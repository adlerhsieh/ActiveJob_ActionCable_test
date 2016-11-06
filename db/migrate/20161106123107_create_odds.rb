class CreateOdds < ActiveRecord::Migration[5.0]
  def change
    create_table :odds do |t|
      t.text :content

      t.timestamps
    end
  end
end
