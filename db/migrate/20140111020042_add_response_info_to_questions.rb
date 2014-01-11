class AddResponseInfoToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :response_type, :string
    add_column :questions, :query, :string
  end
end
