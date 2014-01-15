# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(:id => '19', :query => 'What is your name?', :response_type => 'text')
Question.create(:id => '20', :query => 'I have participated in (received, organized, or dropped out of) the following types of education:', :response_type => 'text')
Question.create(:id => '21', :query => 'I am applying to:', :response_type => 'text')
Question.create(:id => '22', :query => 'Please describe your interest in this working group, as well as the skills and experiences you will bring to the group (in under 500 words):', :response_type => 'text')
Question.create(:id => '23', :query => 'Please describe your fears and aspirations in relation to real estate, group work, and/or pooling money (in under 500 words).', :response_type => 'text')
Question.create(:id => '24', :query => 'What is your current zip/postal code?', :response_type => 'integer')
