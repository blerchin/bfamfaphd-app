# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(:id => '5', :query => 'How many hours a week do you spend on work you would consider creative?', :response_type => 'number'
Question.create(:id => '6', :query => 'If you work in a specific medium, what is it?', :response_type => 'text'
Question.create(:id => '7', :query => 'Do you share tools and/or facilities with other artists in your area?', :response_type => 'boolean'
Question.create(:id => '9', :query => 'In one or two words, what experiences were most influential in your decision to do creative work?', :response_type => 'text'
Question.create(:id => '8', :query => 'Are you a member of any clubs or organizations related to art & design?', :response_type => 'boolean'
Question.create(:id => '10', :query => 'Do you regularly share stories, advice, and skills you have gained through your creative practice?', :response_type => 'boolean'
Question.create(:id => '11', :query => 'If so, do you get paid to do it?', :response_type => 'boolean'
Question.create(:id => '12', :query => 'How many of your friends and colleagues are artists or designers?', :response_type => 'number'
Question.create(:id => '13', :query => 'What (if anything) do you miss most about your formal education?', :response_type => 'text'
Question.create(:id => '14', :query => 'What sort of facilities or infrastructure do you wish you had access to?', :response_type => 'text'
Question.create(:id => '15', :query => 'Approximate the cost of developed real estate, per square foot, in your area.', :response_type => 'number'
Question.create(:id => '16', :query => 'How much (in dollars, please) would you be willing to spend for access to collective artist-run space?', :response_type => 'number'
Question.create(:id => '17', :query => 'If you currently have a studio or other space you use for your own work, what do you pay each month to use it?', :response_type => 'number'
Question.create(:id => '18', :query => 'What is your email?', :response_type => 'text'
Question.create(:id => '2', :query => 'Do you have access to the tools you need to practice your craft/trade?', :response_type => 'boolean'
