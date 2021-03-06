class CreateEventsEvents < ActiveRecord::Migration

  def up
    create_table :refinery_events do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :all_day
      t.integer :type
      t.integer :photo_id
      t.text :blurb
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-events"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/events/events"})
    end

    drop_table :refinery_events

  end

end
