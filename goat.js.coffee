$.fn.goat = (options) ->
  $(options.to).after("<div class='ajax-loader'>")
  $(this).change ->
    goat = $(options.to)
    goat.next().show()
    url = options.url.replace(":value", $(this).val())
    goat.html("")
    $.ajax
      url: url
      success: (data) ->
        data.map (option) ->
          goat.append(new Option(option.name, option.id))
        goat.next().hide()
