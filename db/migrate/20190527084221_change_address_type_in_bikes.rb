class ChangeAddressTypeInBikes < ActiveRecord::Migration[5.2]
  def change
    change_column :bikes, :address, :string
  end
end
