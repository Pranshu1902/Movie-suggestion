# Made by Pranshu Aggarwal

# create an AI that takes certain data and understands it and then on test case displays the suggested genre

rm = list(ls())

movie <- read.csv("movies.csv")

films <- c(movie$Film) # access the film names


test <- c("A Dangerous Method", "When in Rome", "Waiting For Forever", "Twilight: Breaking Dawn")

n <- length(test)

index = c()

for (i in 1:n){
    index <- c(index, match(c(test[[i]]),films)) # adding the indexes
}
genre = c()
for (i in 1:n){
    genre <- c(genre, movie$Genre[[index[[i]]]])
}

x <- length(genre)

answer <- c()

for (i in 1:x){
    for (j in 1:x){
        if (i != j && genre[[i]] == genre[[j]]){
            answer2 <- append(answer, genre[[i]])
        }
    }
}
j = 0

s <- 1:77
x2 <- s[!s %in% index]

for (i in x2){
    if (movie$Genre[[i]] == answer2 && j < 5){
            print(movie$Film[[i]])
            j = j+1
    }
}
print(answer2)
