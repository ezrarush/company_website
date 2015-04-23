class SetEventTypeDefaultToOneAgain < ActiveRecord::Migration
  def change
    change_column_default(:refinery_events, :event_type, 1)
  end
end
