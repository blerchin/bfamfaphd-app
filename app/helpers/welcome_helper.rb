module WelcomeHelper
	def validated_form_for( model )
		form_for(model, html: { class: "form-inline", 
											"parsley-validate"=> ""} ) do |f|
					yield(f)
				end
	end
end
