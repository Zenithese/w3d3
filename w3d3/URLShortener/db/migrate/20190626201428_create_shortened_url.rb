class CreateShortenedUrl < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null:false
      t.string :short_url, null:false

      t.timestamp
    end
  end
end
