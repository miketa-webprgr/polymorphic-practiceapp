class CreatePlayerTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.references :taggable, polymorphic: true, null: false
      t.string :body

      t.timestamps
    end
  end
end
