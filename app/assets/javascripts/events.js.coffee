$(document).on 'ready page:load', ->
  $("#calendar").fullCalendar(
    events: '/events.json'
  )