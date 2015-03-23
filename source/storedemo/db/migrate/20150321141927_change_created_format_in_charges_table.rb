class ChangeCreatedFormatInChargesTable < ActiveRecord::Migration
  def up
    change_column :Charges, :created, :date
  end

  def down
    change_column :Charges, :created, :integer
  end
end
