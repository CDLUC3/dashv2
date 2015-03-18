class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.string :data_type

      t.timestamps null: false
    end
  end
end
