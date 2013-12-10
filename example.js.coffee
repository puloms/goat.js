jQuery ->
  #AJAX to load cities from the selected state
  $("#states").goat
    url: "/state/:value/cities"
    to: "#user_person_city_id"
