d1 <- read.table("student-mat.csv", sep=";", header=TRUE)
d2 <- read.table("student-por.csv", sep=";", header=TRUE)

d3 <- merge(d1, d2, by=c("school", "sex", "age", "address", "famsize", "Pstatus", 
                         "Medu", "Fedu", "Mjob", "Fjob", "reason", "nursery", "internet"))

print(paste("Number of rows in the merged data frame:", nrow(d3)))

head(d3)

write.csv(d3, "allstudentsdata.csv", row.names = FALSE)

print("Successfully created the merged file: merged_students.csv")