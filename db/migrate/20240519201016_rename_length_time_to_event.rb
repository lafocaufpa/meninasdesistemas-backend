class RenameLengthTimeToEvent < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :length_time, :lenght_time
  end
end
