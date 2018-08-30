class AddFeaturedToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :featured, :boolean
  end
end
