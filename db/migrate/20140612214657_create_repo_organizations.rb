class CreateRepoOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
