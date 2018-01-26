# Jose Pedraza / Enero 2018
# Proyecyo de aprendizaje-> Desafio Kaggle-> Titanic

# Configuración de directorio e importación de datos
setwd("~/Desktop/R/TT/desafiotitanic")
test <- read.csv("test.csv")
train <- read.csv("train.csv")

# Examinando dataframe
str(train)
str(test)

# Revisión del número de personas que sobrevivieron
table(train$Survived)
prop.table(table(train$Survived))

# Creación de nueva columna en "test" prediciendo que todas las personas mueren
test$Survived <- rep(0, 418)

# Creando nuevo dataframe y exportando
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "muertes1.csv", row.names = FALSE)

