$(document).on 'page:load ready', ->
  $("#calendar").once('calendar').fullCalendar(
    events: '/events.json'
  );