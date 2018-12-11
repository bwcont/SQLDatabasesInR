#load the package to let you access your db
library(RMySQL)

#connect to your database 
#Public db from Datacamp
connect <- dbConnect( RMySQL::MySQL(),
                      dbname = "company",
                      host = 'courses.csrrinzqubik.us-east-1.rds.amazonaws.com',
                      port = 3306,
                      user = "student",
                      password = "datacamp")

#Check your database is connected:
summary(connect)

#list out your tables in the db and read the contents of a table
dbListTables(connect)

dbReadTable(connect, 'employees')

#assign easier to see variables for each table
employees <- dbReadTable(connect, 'employees')
products <- dbReadTable(connect, 'products')
sales <- dbReadTable(connect, 'sales')

#Standard SQL query for retrieving data using SQL syntax 
dbGetQuery(connect, 'SELECT * FROM employees'
)


#Disconnect (to be nice)
dbDisconnect(connect)
