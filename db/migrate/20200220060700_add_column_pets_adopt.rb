class AddColumnPetsAdopt < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :to_adopt, :boolean, default: true
  end
end
