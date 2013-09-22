class CreateTable2s < ActiveRecord::Migration
  def change
    create_table :table2s do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
