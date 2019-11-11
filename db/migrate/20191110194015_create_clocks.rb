class CreateClocks < ActiveRecord::Migration[5.2]
  def change
    create_table :clocks do |t|
      t.string :first_name
      t.string :last_name
      t.string :action
      t.text :details

      t.timestamps
    end
  end
end
