class CreateSocialMediaLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :social_media_links do |t|
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
