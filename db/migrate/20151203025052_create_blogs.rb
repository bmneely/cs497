class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.references :store

      t.timestamps null: false
    end
  end
end
