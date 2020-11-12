$(document).on("click", ".rating-form", function() {
    $.ajax({
    url: "/reviews",
    type: "POST",
    scoreName: 'review[rating]',
    data: { review: { reviewable_id : $('#review_reviewable_id').val(), reviewable_type: $('#review_reviewable_type').val(), rating:  $("input[name^='review']")[3].value}},
    dataType: "script",
    success: function(data) {
        alert('successfully');
      }
    });
 });