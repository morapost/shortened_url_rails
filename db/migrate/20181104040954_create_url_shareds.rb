class CreateUrlShareds < ActiveRecord::Migration[5.0]
  def change
    create_table :url_shareds do |t|
      t.references :short_url, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
