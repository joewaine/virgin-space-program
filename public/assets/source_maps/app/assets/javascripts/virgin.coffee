class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
<<<<<<< HEAD
    $('#grid').on('click', 'td', Home.get_seat_id)
    $('#grid').on('click', 'td', Home.toggle_css)
    $('#buy_ticket').on('click', Home.purchase_seats)
=======
    $('#grid').on('click', Home.get_row_and_col)

>>>>>>> 4c225df85cbdee67dec880558f39f07ab935125c

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

<<<<<<< HEAD
  @get_seat_id: ->
    seat_id = $(this).data('seat-id')
    console.log(seat_id)

  @toggle_css: ->
    $(this).toggleClass('chosen')
=======
  @get_row_and_col: ->
    row = $(this).parent().data('row-id')
    col = $(this).data('col-id')
    console.log(row)
    console.log(col)
>>>>>>> 4c225df85cbdee67dec880558f39f07ab935125c

$(document).ready(Home.document_ready)

$("#seat_row").tooltip();
