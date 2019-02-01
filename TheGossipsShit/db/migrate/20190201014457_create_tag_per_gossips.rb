class CreateTagPerGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_per_gossips do |t|
      t.belongs_to :tag, :gossip, index: true

      t.timestamps
    end
  end
end
