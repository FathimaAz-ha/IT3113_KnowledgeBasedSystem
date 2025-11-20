student(ajay,32,0,football).
student(mark, 40,0, neither).
student(sara, 16,1,cricket).
student(zaira, 34,1,cricket).
student(sachin, 55, 0, neither).
student(rahul, 45,0,cricket).
student(pooja, 20,1, neither).
student(smith, 15,0, cricket).
student(laxmi, 55,1, football).
student(michel, 15,0, football).


distance((X1, Y1), (X2,Y2), D):-
    X is X2 - X1,
    Y is Y2 - Y1,
    D is
1. Football - (30-32)^2 + (0-0)^2 = 2
3. Neither - (30 - 40)^2 + (0-0)^2 = 10
5. Cricket - (30-16)^2 + (0-1)^2 = (14 + 1)^2  = 14.045
2. Cricket - (30 - 34)^2 + (0-1)^2 = 4.123
9. Neither - (30 - 55)^2 + (0 - 0)^2 = 25
7. Cricket - (30 - 45)^2 + (0-0)^2 = 15
4. Neither - (30 - 20)^2 + (0-1)^2 = 10.049
6.Cricket - (30 - 15)^2 + (0 - 0)^2 = 15
10 .Football -(30 - 55)^2 + (0-1)^2 = 25.019
8. Football - (30-15)^2 + (0-0)^2 = 15

1. finding the distance
2. keySort = sorting
3. K if K = 3 predication is football - first nearest point
sum -> if the two same count occurred then get the minimum summation
