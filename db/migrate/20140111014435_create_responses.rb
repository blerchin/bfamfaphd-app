class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :user, index: true
      t.references :question, index: true
      t.integer :int_val
      t.string :string_val

      t.timestamps
    end
  end
end
