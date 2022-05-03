class CreateFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.string :image
      t.string :text

      t.timestamps
    end
  end
end
