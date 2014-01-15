class AddArrayValToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :array_val, :text
  end
end
