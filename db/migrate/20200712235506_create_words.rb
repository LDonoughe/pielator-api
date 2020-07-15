class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :deutsch
      t.string :english
      t.string :pie
      t.boolean :noun
      t.timestamps
    end
  end
end
