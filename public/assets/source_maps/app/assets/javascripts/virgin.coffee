class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#grid').on('click', Home.get_row_and_col)


  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @get_row_and_col: ->
<<<<<<< HEAD
    row = $(this).getAttribute('data-row-id')
    col = $(this).attr('data-col-id')
=======
    row = $(this).parent().data('row-id')
    col = $(this).data('col-id')
    console.log(row)
    console.log(col)
>>>>>>> 0e42b4564564fd8f7c25c10869e529fb2dc41d8f

$(document).ready(Home.document_ready)

$("#seat_row").tooltip();
