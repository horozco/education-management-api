class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :address
      t.references :organization, index: true

      t.timestamps
    end
  end
end
