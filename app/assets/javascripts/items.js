jQuery(function() {
  var categories;
  categories = $('#item_category_id').html();
  console.log(categories);
  return $('#item_primecategory_id').change(function() {
    var primecategory, options;
    primecategory = $('#item_primecategory_id :selected').text();
    options = $(categories).filter("optgroup[label=" + primecategory + "]").html();
    console.log(options);
    if (options) {
      return $('#item_category_id').html(options);
    } else {
      return $('#item_category_id').empty();
    }
  });
});