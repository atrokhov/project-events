jQuery ->
	$(document).on 'turbolinks:load', ->
	  $('#category_selection').parent().hide()
	  categories = $('#category_selection').html()
	  $('#primecategory_selection').change ->
	    primecategory = $('#primecategory_selection :selected').text()
	    escaped_primecategory = primecategory.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
	    options = $(categories).filter("optgroup[label=#{escaped_primecategory}]").html()
	    if options
	      $('#category_selection').html(options)
	      $('#category_selection').parent().show()      
	    else
	      $('#category_selection').empty()
	      $('#category_selection').parent().hide()

