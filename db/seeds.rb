User.delete_all
Subject.delete_all
Topic.delete_all
Subtopic.delete_all
Question.delete_all
Answer.delete_all

user1 = User.create(name: 'Zhao', email: 'zhao@gmail.com', password: 'pass12345', password_confirmation: 'pass12345')
user2 = User.create(name: 'Omar', email: 'omar@gmail.com', password: 'pass12345', password_confirmation: 'pass12345')
user3 = User.create(name: 'Dylan', email: 'dylan@gmail.com', password: 'pass12345', password_confirmation: 'pass12345')
user4 = User.create(name: 'Isabel', email: 'belcortes@gmail.com', password: 'pass12345', password_confirmation: 'pass12345', admin: true)



subject1 = Subject.create(name: 'PRECALCULUS')
subject2 = Subject.create(name: 'CALCULUS')

topic1 = Topic.create(name: 'INTRO TO PRECALCULUS')
topic2 = Topic.create(name: 'FUNCTIONS')
topic3 = Topic.create(name: 'TRIGONOMETRY')
topic4 = Topic.create(name: 'INTRO TO CALCULUS')

subtopic1 = Subtopic.create(name: 'ALGEBRA', badge: 'algebra.png')
subtopic2 = Subtopic.create(name: 'EXPONENTS', badge: 'exponents.png')
subtopic3 = Subtopic.create(name: 'DERIVATIVES', badge: 'http://i.ebayimg.com/t/Pi-25mm-badge-maths-geek-nerd-3-14-button-calculus-/06/!BzsNkw!CWk~$(KGrHqF,!jkEw4-0k,4hBM(IT1!79g~~_35.JPG')

question1 = Question.create(question_number: 1, content: "LINEAR EQUATIONS @@IMAGE=question1_bold.jpg@@IMAGE-END")
question2 = Question.create(question_number: 2, content: "SOLVING LINEAR EQUATIONS @@IMAGE=question2.jpg@@IMAGE-END")  
question3 = Question.create(question_number: 3, content:" SYSTEMS OF EQUATIONS @@IMAGE=question3_1.png@@IMAGE-END")

question4 = Question.create(question_number: 4, content: "POLYNOMIALS @@IMAGE=question4.png@@IMAGE-END
")

question5 = Question.create(question_number: 1, content:"What is 2^3?")

answer1 = Answer.create(content: 'c', is_correct: true)
answer2 = Answer.create(content: 2, is_correct: true)
answer3 = Answer.create(content: '(0,3)', is_correct: true)
answer4 = Answer.create(content: 'd', is_correct: true)
answer5 = Answer.create(content: 8, is_correct: true)


subject1.topics << topic1 << topic2 << topic3
subject2.topics << topic4
topic1.subtopics << subtopic1 << subtopic2
topic4.subtopics << subtopic3
subtopic1.questions << question1 << question2 << question3 << question4
subtopic2.questions << question5
question1.answers << answer1
question2.answers << answer2
question3.answers << answer3
question4.answers << answer4
question5.answers << answer5


