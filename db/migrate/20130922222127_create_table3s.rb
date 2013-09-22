class CreateTable3s < ActiveRecord::Migration
  def change
    create_table :table3s do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
