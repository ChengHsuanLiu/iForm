class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.text :title # 問題
      t.text :description
      t.string :name # attr name
      t.string :group
      t.string :type # input type
      t.string :data_type # int / text / string etc

      t.integer :form_id
      t.timestamps
    end
  end
end
