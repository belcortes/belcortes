User.delete_all
Subject.delete_all
Topic.delete_all
Subtopic.delete_all

user1 = User.create(name: 'Zhao', email: 'zhao@gmail.com', password: 'pass123', password_confirmation: 'pass123')
user2 = User.create(name: 'Omar', email: 'omar@gmail.com', password: 'pass123', password_confirmation: 'pass123')
user3 = User.create(name: 'Dylan', email: 'dylan@gmail.com', password: 'pass123', password_confirmation: 'pass123')
user4 = User.create(name: 'Isabel', email: 'belcortes@gmail.com', password: 'pass123', password_confirmation: 'pass123', admin: true)

subject1 = Subject.create(name: 'PreCalculus')
subject2 = Subject.create(name: 'Calculus')

topic1 = Topic.create(name: 'Intro to PreCalculus')
topic2 = Topic.create(name: 'Functions')
topic3 = Topic.create(name: 'Trigonometry')
topic4 = Topic.create(name: 'Intro to Calculus')

subtopic1 = Subtopic.create(name: 'Algebra')
subtopic2 = Subtopic.create(name: 'Exponents')
subtopic3 = Subtopic.create(name: 'Derivatives')

question1 = Question.create(content: 'What is 1+1?')
question2 = Question.create(content: 'What is 2 * 3?')  

answer1 = Answer.create(content: 2, is_correct: true)
answer2 = Answer.create(content: 6, is_correct: false)


subject1.topics << topic1 << topic2 << topic3
subject2.topics << topic4
topic1.subtopics << subtopic1 << subtopic2
topic4.subtopics << subtopic3
subtopic1.questions << question1 << question2
question1.answers << answer1
question2.answers << answer2



# question1 = Question.create(content: '')

# puts user4.errors.full_messages