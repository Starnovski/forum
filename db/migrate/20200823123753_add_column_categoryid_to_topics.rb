class AddColumnCategoryidToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :category_id, :integer
  end
end
