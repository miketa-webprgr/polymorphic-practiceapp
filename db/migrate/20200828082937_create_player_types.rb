class CreatePlayerTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.references :taggable, polymorphic: true, null: false
      t.string :tag

      t.timestamps
    end
  end
end
