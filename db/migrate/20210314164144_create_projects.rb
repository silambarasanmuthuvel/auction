class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.references :user
      t.references :category
      t.timestamps
    end
  end
end
