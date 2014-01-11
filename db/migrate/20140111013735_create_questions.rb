class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user, index: true
      t.references :response, index: true

      t.timestamps
    end
  end
end
