class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :text
    end
  end
end
