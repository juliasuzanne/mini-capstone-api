class Image < ApplicationRecord
  def change
    create_table :images do |t|
      t.string :url
      t.string :description
    end
  end
end
