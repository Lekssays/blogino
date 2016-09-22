class AddImageToPosts < ActiveRecord::Migration
  def up
    add_attachment :posts, :image
  end

  def down
    remove_attachment :posts, :image
  end
end
