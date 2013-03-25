$(function(){
  $('#buy_ticket').on('click', purchase_seats);
});

function purchase_seats() {
    var chosen = $(".chosen");
    chosen = _.map(chosen, function(x){ return $(x).data('seat-id');});
    var token = $("input[name=authenticity_token]").val();
    var flight_number = $('table').data('flight-id');
    $.ajax({
      dataType: 'script',
      type: "post",
      url: "/flights/purchase",
      data: {authenticity_token:token, ids:chosen, flight_number:flight_number}
    }).done();
    return false;
}

