class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.text :data
      t.integer :user_id
      t.integer :form_id

      t.timestamps
    end
  end
end
