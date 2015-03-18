class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.integer :PublicationYear
      t.string :language
      t.integer :size

      t.timestamps null: false
    end
  end
end
