# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times {|index| User.create!(email: "test#{index}@test.com", password: "password")}
3.times {|index| Group.create!(name: "Group Name#{index}")}
3.times {|index| Tag.create!(tag: "tag#{index + 1}", tag_friendly: "tag-#{index + 1}")}
3.times {|index| Question.create!(title: "Question Number: #{index + 1}", group_id: index + 1, user_id: index%2 + 1, user_email: "test#{index % 2}@test.com",question: "This is question number #{index + 1}", viewed: 2)}
3.times {|index| QuestionTag.create!(question_id: index + 1, tag_id: index + 1)}
3.times {|index| Answer.create!(question_id: index + 1, user_id: index%2 + 1, user_email: "test#{index % 2}@test.com", answer: "This is answer", correct: '0')}