class CreateTastes < ActiveRecord::Migration[6.0]
  def change
    create_table :tastes do |t|
      t.string :title
      t.string :text
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
