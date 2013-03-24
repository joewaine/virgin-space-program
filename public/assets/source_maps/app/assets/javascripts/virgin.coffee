class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#grid').on('click', 'td[data-row-id]', Home.get_row_and_col)


  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @get_row_and_col: ->
    row = $(this).getAttribute('data-row-id')
    col = $(this).attr('data-col-id')

$(document).ready(Home.document_ready)

$("#seat_row").tooltip();
