class SetEventTypeDefaultInRefineryEvents < ActiveRecord::Migration
  def change
    change_column_default(:refinery_events, :event_type, 0)
  end
end
