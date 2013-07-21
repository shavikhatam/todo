class AddDoneToElement < ActiveRecord::Migration
  def change
    add_column :elements, :done, :boolean, default: false
  end
end
