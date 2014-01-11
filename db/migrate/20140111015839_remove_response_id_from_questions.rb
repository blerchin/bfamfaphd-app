class RemoveResponseIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :response_id, :string
  end
end
