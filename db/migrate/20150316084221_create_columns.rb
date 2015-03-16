class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.string :name
      t.string :value, default: nil
      t.string :group
      t.string :type

      t.integer :form_id
      t.timestamps
    end
  end
end
