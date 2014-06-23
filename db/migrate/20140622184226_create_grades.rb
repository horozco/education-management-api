class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.references :organization, index: true

      t.timestamps
    end
  end
end
