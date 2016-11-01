class AddCommentsToPost < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :post, index: true
      t.datetime :published_at
      t.timestamps
    end
  end
end
