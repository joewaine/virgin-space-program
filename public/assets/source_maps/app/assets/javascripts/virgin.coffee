class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#grid').on('click', 'td', Home.get_seat_id)
    $('#grid').on('click', 'td', Home.toggle_css)
    $('#buy_ticket').on('click', Home.purchase_seats)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @get_seat_id: ->
    seat_id = $(this).data('seat-id')
    console.log(seat_id)

  @toggle_css: ->
    $(this).toggleClass('chosen')

$(document).ready(Home.document_ready)
