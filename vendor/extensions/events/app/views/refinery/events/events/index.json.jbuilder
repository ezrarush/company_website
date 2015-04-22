json.array!(@events) do |event|
  json.extract! event, :id, :title
  json.start event.start_time
  json.end event.end_time
  json.url refinery.events_event_path(event)
end