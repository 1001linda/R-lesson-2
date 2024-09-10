#1

math = sample(0:100, 100, replace = T)

#a

mean(math[1:10])

#b
temp = math>=60

#c
math[temp]
id = 1:100
id[temp]
(1:100)*temp

#d
summary(math)[3]
median(math)

#array
x = array(1:20, c(4,5))
t(x) //transport

x[c(1,3), ] = seq(1, 19, by = 2)

y = matrix(1:20, nrow = 4, ncol = 5, byrow = T)
Y = matrix(1:20, c(4,5), byrow = T)

e = c(seq(1, 9, by = 2), seq(2, 10, by = 2), seq(11, 19, by = 2), seq(12, 20, by = 2))
z = matrix(e, nrow = 4, ncol = 5, byrow = T)
apply(z, 2, mean) //1.2是row.col方向

#for loop
for(i in runif(10, 0, 5)){
	print(i^2)
}


#exercise_2

x = NULL
for (i in 1:100){
	x = c(x, rnorm(1, 0, 1))
}


#exercise_3

score = sample(80:100, 10000, replace = T)
print(score)

check = seq(80, 100, by = 5)
for(i in 1:length(check)){
	print(i)
	print(check[i])
	print(sum(score == check[i]))
}

for(i in check){
	sum(score == i)
}

id = 1:10000
result = NULL

i = 1
result = c(result, id[score == check[2]])


#Exercise_A

result = arrray(NA, c(200, 3))

for(i in 1:nrow(result)){
	x = runif(1, -10, 10)
	e = rnorm(1, 0, squrt(8))
	y = 1 + 0.5*x

	result[i, ] = c(x, e, y)
}
colnames(result) = c("x", "e", "y")
cor(result[, 1],result[, 3])

sxx = sum((result[,1]-mean(result[,1]))^2)

x_diff = result[,1]-mean(result[,1])
y_diff = result[,3]-mean(result[,3])

sxy = sum(x*y)
b = sxy/sxx


#Exercise

x = sample(0:100, 10^3, replace = T)
result = rep(NA, 1000)
for(i in 1:1000){
	result[i] = 1*(x[i]%%2 == 0)
}

y = cumsum(result)
id = 1:1000
id[y == 100]


#Exercise

x = array(NA, c(5,5))
for(i in 1:5){
	for(j in 1:5){
		x[i, j] = ifelse(i>=j, j ,0)

	}
}

for(i in 1:5){
	print(1:i)
}




















