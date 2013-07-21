class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :todo
      t.integer :list_id

      t.timestamps
    end
  end
end
