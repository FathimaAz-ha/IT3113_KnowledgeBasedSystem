student(alice).
student(bob).
student(charlie).
student(diana).

teacher(smith).
teacher(jones).
teacher(clark).
teacher(williams).
teacher(brown).

course(cs101, programming).
course(cs102, database).
course(cs103, ai).
course(cs104, maths).
course(cs105, algorithm).

enrolled(alice, cs101).
enrolled(bob, cs101).
enrolled(charlie, cs102).
enrolled(diana, cs103).
enrolled(alice, cs104).
enrolled(bob, cs105).
enrolled(charlie, cs104).

teaches(smith, cs101).
teaches(jones, cs102).
teaches(clark, cs103).
teaches(william, cs104).
teaches(brown, cs105).

classmate(X,Y):- enrolled(X,Z),enrolled(Y,Z),X\=Y.
is_student_of(Student, Teacher):- teaches(Teacher, Course),enrolled(Student, Course).
share_teacher(X,Y):-is_student_of(X,Z), is_student_of(Y,Z).
share_teachers(X,Y):- student(X), student(Y), enrolled(X,Z), enrolled(Y,Z), X\=Z.

beginner_course(C):-course(C, programming);course(C, maths).

enrolled_in_any_course(Student) :-student(Student), enrolled(Student,_).
has_students(Teacher):- teaches(Teacher, _).
advanced_student(Student):- enrolled(Student, C), \+ beginner_course(C).
teaches_multiple(Teacher):-teacher(Teacher), teaches(Teacher, _).
not_enrolled(Student, Course):- student(Student), course(Course), \+ enrolled(Student,Course).

student_pair(Student1, Student2, Course) :- student(Student1), student(Student2), course(Course), enrolled(Student1, Course), enrolled(Student2, Course).
