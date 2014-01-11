# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

exports = {}

$ ->
	exports.$questions = $('.question-group')
	exports.$questions.first().addClass('active')

	exports.$jumbotron = $('.jumbotron')
	
	$('form').on "submit", (e) ->
		e.preventDefault()
		$(document).trigger "submitClicked", e


	$(document).on "submitClicked", (e, submitEvent) ->
		$f = $(submitEvent.target)
		action = $f.attr("action")

		if action?
			$.ajax
					url: action
					data: $f.serialize()
					type: "POST"
					success: ->
						selectNextQuestion()
		else
			selectNextQuestion()

	selectNextQuestion =  ->
		q = exports.$questions
		$current = q.filter('.active').first()
		$next = if $current.length > 0 then q.eq( q.index($current) + 1 ) else q.first()

		$current.removeClass('active')
		$next.addClass('active')

		exports.$jumbotron.empty().append $next


	

