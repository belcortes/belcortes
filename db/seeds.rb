User.delete_all
Subject.delete_all
Topic.delete_all
Subtopic.delete_all
Question.delete_all
Answer.delete_all

# user1 = User.create(name: 'Zhao', email: 'zhao@gmail.com', password: 'pass123', password_confirmation: 'pass123')
# user2 = User.create(name: 'Omar', email: 'omar@gmail.com', password: 'pass123', password_confirmation: 'pass123')
# user3 = User.create(name: 'Dylan', email: 'dylan@gmail.com', password: 'pass123', password_confirmation: 'pass123')
# user4 = User.create(name: 'Isabel', email: 'belcortes@gmail.com', password: 'pass123', password_confirmation: 'pass123', admin: true)

user1 = User.create(name: 'Zhao', email: 'zhao@gmail.com', password: 'pass12345', password_confirmation: 'pass12345')
user2 = User.create(name: 'Omar', email: 'omar@gmail.com', password: 'pass12345', password_confirmation: 'pass12345')
user3 = User.create(name: 'Dylan', email: 'dylan@gmail.com', password: 'pass12345', password_confirmation: 'pass12345')
user4 = User.create(name: 'Isabel', email: 'belcortes@gmail.com', password: 'pass12345', password_confirmation: 'pass12345', admin: true)



subject1 = Subject.create(name: 'PreCalculus')
subject2 = Subject.create(name: 'Calculus')

topic1 = Topic.create(name: 'Intro to PreCalculus')
topic2 = Topic.create(name: 'Functions')
topic3 = Topic.create(name: 'Trigonometry')
topic4 = Topic.create(name: 'Intro to Calculus')

subtopic1 = Subtopic.create(name: 'Algebra', badge: 'algebra.jpg')
subtopic2 = Subtopic.create(name: 'Exponents', badge: 'http://i.ebayimg.com/t/Pi-25mm-badge-maths-geek-nerd-3-14-button-calculus-/06/!BzsNkw!CWk~$(KGrHqF,!jkEw4-0k,4hBM(IT1!79g~~_35.JPG')
subtopic3 = Subtopic.create(name: 'Derivatives', badge: 'http://i.ebayimg.com/t/Pi-25mm-badge-maths-geek-nerd-3-14-button-calculus-/06/!BzsNkw!CWk~$(KGrHqF,!jkEw4-0k,4hBM(IT1!79g~~_35.JPG')

question1 = Question.create(content: "A linear equation is an equation for a straight line.
The basic format for a linear equation is:
y = mx + b
where m is the slope and b is the y-intercept
Slope = One of the most important properties of a straight line is in how it angles away from the horizontal. This concept is reflected in something called the 'slope' of the line. The formula for the slope of a line is @@IMAGE=slope_formula.jpg@@IMAGE-END where (x1, y1) and (x2, y2) are two points in ordered pair form.                                                                                         
                    Which of these is not a linear equation?

a) 2x + y = 5x + 3
  b) y = 0
  c) (x + 2)2x = 6
  d) x = 1
")
question2 = Question.create(content: "Linear equations are the simplest equations that you'll deal with. You've probably already solved linear equations; you just didn't know it.
Take the equation:
  x + 2 = 3
  The whole point is to get x by itself. In this case, we can subtract two from both sides and we get    x = 1
    Here we can also see an important part of algebra, the Golden Rule of Algebra
“what you do to one side of the equation, you have to do to the other”
/\n/
q - what is x?
  3x + 5 = 15 - 2x

")  

question3 = Question.create(content:"3 - Systems of linear equations

Think back to linear equations. For instance, consider the linear equation y = 3x – 5. A 'solution' to this equation was any x, y-point that 'worked' in the equation. So (2, 1) was a solution because, plugging in 2 for x:
3x – 5 = 3(2) – 5 = 6 – 5 = 1 
1 = y
Now consider the following two-variable system of linear equations:
y = 3x – 2
y = –x – 6
Since the two equations above are in a system, we deal with them together at the same time. In particular, we can graph them together on the same axis system, like this:
@@IMAGE=systems1.jpg@@IMAGE-END The solution to this system is the point where both lines intersect, like so: 
@@IMAGE=systems2.jpg@@IMAGE-END
There are a few ways to solve a system
1 - if a question gives you a point, plug it in both equations, if both solutions are true then that point is the solution
2 - if you are not given a point: write both in the basic linear equation format: 
  y = mx+b
  make both equal to each other:
  ex: y = 2x+5, y=4x
  y = y, 2x+5 = 4x
  then solve for x
  5 = 2x
  5/2 = x
          lastly plug in x into any of the equations and solve for y
you will have two points and that is the solution for the system

q - what is the solution for the following system of equations: 
  x = 3 - y,
           4x + 2y = 6
           answer format (x,y)

")

question4 = Question.create(content: " ")

answer1 = Answer.create(content: 'c', is_correct: true)
answer2 = Answer.create(content: 2, is_correct: true)
answer3 = Answer.create(content: '(0,3)', is_correct: true)


subject1.topics << topic1 << topic2 << topic3
subject2.topics << topic4
topic1.subtopics << subtopic1 << subtopic2
topic4.subtopics << subtopic3
subtopic1.questions << question1 << question2 << question3
question1.answers << answer1
question2.answers << answer2
question3.answers << answer3


