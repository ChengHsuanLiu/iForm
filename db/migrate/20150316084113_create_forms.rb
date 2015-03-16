class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.text :description
      t.string :status, default: "draft"
      t.boolean :can_edit, default: false

      t.integer :user_id
      t.timestamps
    end
  end
end
