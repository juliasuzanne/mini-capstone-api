class AddUrlDescriptionToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :url, :string
    add_column :images, :description, :string
  end
end
