class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.integer :folder_id
      t.text :source
      t.string :source_type
      t.string :provider_url
      t.string :provider_name
      t.string :title
      t.text :description
      t.string :thumbnail_url
      t.string :favicon_url
      t.text :html

      t.timestamps
    end  
  end
end
