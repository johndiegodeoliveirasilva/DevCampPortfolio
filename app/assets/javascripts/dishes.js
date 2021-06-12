$('.select2').on('change', function (e) {
  var values = $('.select2').val()
  $(function(){
    $.ajax({
      url: "/ingredients/sum_ingredients",
      data: { ingredient_ids: values,
      dataType: "json"
    }
    }).done(function(data){
      $('input#dish_total').val(data)
    })
  })
})
