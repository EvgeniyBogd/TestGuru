class AddColumnTimerToTests < ActiveRecord::Migration[7.0]
  def change
    add_column :tests, :timer, :integer, default:10
  end
end
