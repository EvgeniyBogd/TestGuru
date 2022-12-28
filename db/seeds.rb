# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
categories = Category.create!([
  {title: 'Web development'},
  {title: 'Mobile development'},
  {title: 'Game development'}])

 users = User.create!([
  {name: 'Adam', last_name: 'Demigod', email: '1@mail.ru', password: '111111', type: 'Admin'},
  {name: 'Eva', last_name: 'Demigod', email: '2@mail.ru', password: '222222', type: 'User'}]) 

tests = Test.create!([
  {title: 'Test Ruby', category_id: categories[0].id, author_id: users[0].id, published: true},
  {title: 'Test Kotlin', level: 1, category_id: categories[1].id, author_id: users[0].id},
  {title: 'Test C#', level: 2, category_id: categories[2].id, author_id: users[0].id}])

questions = Question.create!([
  {body: 'question 1', test_id: tests[0].id},
  {body: 'question 2', test_id: tests[0].id},
  {body: 'question 3', test_id: tests[0].id},
  {body: 'question 4', test_id: tests[0].id},
  {body: 'question 5', test_id: tests[0].id}])

answers = Answer.create([
  {body: 'answer 1', correct: true, question_id: questions[0].id},
  {body: 'answer 2', question_id: questions[0].id},
  {body: 'answer 3', correct: true, question_id: questions[1].id},
  {body: 'answer 4', question_id: questions[1].id},
  {body: 'answer 5', correct: true, question_id: questions[2].id},
  {body: 'answer 6', question_id: questions[2].id},
  {body: 'answer 7', correct: true, question_id: questions[3].id},
  {body: 'answer 8', question_id: questions[3].id},
  {body: 'answer 9', correct: true, question_id: questions[4].id},
  {body: 'answer 10', question_id: questions[4].id},
  ])

