# SQL Practice

## Introduction

In this repository, I will store my answers and notes for the SQL exercises of complex topics using the [AdventureWorks 2019 dataset](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms). All the work is based in the Udemy Course called ["The Advanced SQL Server Masterclass For Data Analysis"](https://www.udemy.com/share/104Od23@rKxQZQyo2g23LNvR2QAnhd3j4gzS7NKmDhUg0J4EoTtFLc_kIgSy7fVvSmsusTuj5g==/) by Travis Cuzick.

## Advanced Analysis with Window Functions

In this section of the course window functions are presented. Window functions are usefull in order to make agregate functions without losing all the data in the table in order to gain row level detail of the aggregation that is being done.
In the next [link](https://github.com/mbbau/SQL_Practice/tree/main/Section%202%20-%20Advanced%20Analysis%20with%20window%20functions) you will find solved execerises using window functions with the dataset mentioned in the introduction.

### OVER()

The first function introduced was OVER(). This function allow you to add an extra colum to the table that contains the aggregated value that you are calculating. This is an example taken from the first exercise of the file named **"Introducing Window functions with Over"** :

![Example of using OVER](https://github.com/mbbau/SQL_Practice/blob/main/Images/Example%20of%20using%20OVER.png?raw=true)

As you can see, the OVER() function add the average of the Rate into a new colunm of the table, instead of a single value as in the first query of the image. This shows the value that this function has, as it allows you to compare single values to calculated ones.

### PARTITION BY

The second function introduced is PARTITION BY(). This function goes inside the OVER() function and it allows you to make groups out of the data contained in the table, in order to gain granularity over the aggregation. For example you can make the SUM() of the sold items but present the data by category of product. In the next figure you will be able to watch an example case for the use of the PARTITION BY() function.

()[]

### ROW NUMBER



 
