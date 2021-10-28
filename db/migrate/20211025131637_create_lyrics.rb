class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.string :title,     null: false
      t.text   :lyric,     null: false
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
