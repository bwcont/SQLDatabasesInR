###Following Datacamp.com "Import Data in R" course

#load the package to let you access your db
library(RMySQL)

#connect to your database
connect <- dbConnect( RMySQL::MySQL(),
                      dbname = "company",
                      host = 'courses.csrrinzqubik.us-east-1.rds.amazonaws.com',
                      port = 3306,
                      user = "student",
                      password = "datacamp")

#Check your database is connected:
summary(connect)

