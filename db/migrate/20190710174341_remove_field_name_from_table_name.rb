class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :string
  end
end
