class AddIndexToPostsUserId < ActiveRecord::Migration[6.1]
  def change
    unless index_exists?(:posts, :user_id, name: 'index_posts_on_user_id')
      add_index :posts, :user_id, name: 'index_posts_on_user_id'
    end
  end
end