# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

exports = {}

$ ->
	exports.$questions = $('.question-group')
	exports.$questions.first().addClass('active')
	exports.current_question = 0

	exports.$questions.each (i, el)->
		$(el).prepend("<div class='counter'>
								Question #{i}/#{exports.$questions.length-1}
									</div>") if i > 0

	exports.$jumbotron = $('.jumbotron')



	$(document).on "submitClicked", (e, submitEvent) ->
		$f = $(submitEvent.target).parents('form')
		action = $f.attr("action")
		

		if action?
			return unless $f.parsley('validate')
			$f.find('input[type=submit]').attr('disabled', 'disabled')

			$.ajax
					url: action
					dataType: 'json'
					data: $f.serialize()
					type: "POST"
					success: ->
						$f.find('input[type=submit]').removeAttr('disabled')
						selectQuestionRel(1)
		else
			selectQuestionRel(1)
	
	$(document).on "backClicked", (e, clickEvent) ->
		selectQuestionRel(-1)
		
	wireUpButtons(exports.$jumbotron)
	

wireUpButtons = ($el)->
	$el.find('input[type=submit]').on "click", (e) ->
		e.preventDefault()
		$(document).trigger "submitClicked", e

	$el.find('input[name=Back]').on "click", (e) ->
		e.preventDefault()
		$(document).trigger "backClicked", e



workingGroupLogic = ($el) ->
	$wg = $el.find('input[name=join-a-group]')
	$pool = $el.find('input[value="pool-money"]')

	return selectQuestionRel(1) if $el.attr('id') is 'question-22'	and not exports.join_a_group
	return selectQuestionRel(1) if ($el.attr('id') is 'question-23') and not exports.pool_money

	return if $wg.length is 0
	$questions = $el.find('#working-group-questions')

	exports.join_a_group = false
	exports.pool_money = false
	$wg.parent().on "click", ->
		 hideShow()

	$pool.on "click", ->
		exports.pool_money = $pool.prop('checked')
		true #click needs to bubble

	hideShow = ->
		if $wg.prop('checked')
			exports.join_a_group = true
			$questions.show()
		else
			exports.join_a_group = false
			$questions.hide()
	hideShow()
	
	
			

selectQuestionRel = (change) ->
	q = exports.$questions
	q.eq(exports.current_question).removeClass('active')

	exports.current_question += change

	q.eq(exports.current_question).addClass('active')

	exports.$jumbotron.empty().append q.eq(exports.current_question)
	wireUpButtons(exports.$jumbotron)
	
	workingGroupLogic( q.eq(exports.current_question))

	

