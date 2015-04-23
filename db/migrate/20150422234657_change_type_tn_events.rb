class ChangeTypeTnEvents < ActiveRecord::Migration
  def change
    change_table :refinery_events do |t|
      t.rename :type, :event_type
    end
    
  end
end
