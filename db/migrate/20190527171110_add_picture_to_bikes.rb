class AddPictureToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :picture, :string
  end
end
