class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#grid').on('click', Home.get_row_and_col)


  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @get_row_and_col: ->
    row = $(this).parent().data('row-id')
    col = $(this).data('col-id')
    console.log(row)
    console.log(col)

$(document).ready(Home.document_ready)
