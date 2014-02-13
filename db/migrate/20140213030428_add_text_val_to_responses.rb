class AddTextValToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :text_val, :text
  end
end
