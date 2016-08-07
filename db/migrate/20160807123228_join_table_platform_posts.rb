class JoinTablePlatformPosts < ActiveRecord::Migration[5.0]
  def change
    create_join_table :platforms, :posts do |t|
      # t.index [:platform_id, :post_id]
      # t.index [:post_id, :platform_id]
    end
  end
end
