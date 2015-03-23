class ChangePrecisionInAmountOfChargesTable < ActiveRecord::Migration
  def change
  	change_column :charges, :amount, :decimal, :precision => 30, :scale => 2
  end
end
