$(document).on 'page:load ready', ->
  $("#calendar").fullCalendar(events: '/events.json');

