class CreateBlacklightFoldersFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :blacklight_folders_folders do |t|
      t.string :name
      t.references :user, null: false, polymorphic: true, index: true
      t.string :visibility
      t.integer :number_of_members, default: 0, null: false

      t.timestamps
    end
  end
end
