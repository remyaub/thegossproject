class CreateCommentaryOfCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :commentary_of_commentaries do |t|
      t.text :content

      t.timestamps
    end
  end
end
