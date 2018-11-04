class CreateShortUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :short_urls do |t|
      t.text :original_url
      t.string :short_url
      t.string :email

      t.timestamps
      

    end
    
    add_index :short_urls, :short_url,unique: true
    add_index :short_urls, [:original_url,:email],unique: true
  end
end
