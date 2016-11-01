$(document).ready(function(){
  newArticleListener();
});

var newArticleListener = function() {
  $('#new-article').on('submit', function(event){
    event.preventDefault();
    var form = $(this);
    var url = form.attr('action');
    var method = form.attr('method');
    var data = form.serialize();

    $.ajax({
      url: url,
      method: method,
      data: data
    })

    .done(function(response){
      // response = $.parseJSON(response);
      console.log(response);
      console.log(response.title);
    })
  })
}
