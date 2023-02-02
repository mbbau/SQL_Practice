# Notes about the course "The Advanced SQL Server Masterclass For Data Analysis"

## Introduction

In this repository, I will store my answers and notes for the SQL exercises of complex topics using the [AdventureWorks 2019 dataset](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms). All the work is based in the Udemy Course called ["The Advanced SQL Server Masterclass For Data Analysis"](https://www.udemy.com/share/104Od23@rKxQZQyo2g23LNvR2QAnhd3j4gzS7NKmDhUg0J4EoTtFLc_kIgSy7fVvSmsusTuj5g==/) by Travis Cuzick.

## Advanced Analysis with Window Functions

In this section of the course window functions are presented. Window functions are usefull in order to make agregate functions without losing all the data in the table in order to gain row level detail of the aggregation that is being done.
In the next [link](https://github.com/mbbau/SQL_Practice/tree/main/Section%202%20-%20Advanced%20Analysis%20with%20window%20functions) you will find solved execerises using window functions with the dataset mentioned in the introduction.

### OVER()

The first function introduced was OVER(). This function allow you to add an extra colum to the table that contains the aggregated value that you are calculating. This is an example taken from the first exercise of the file named **"Introducing Window functions with Over"** :

![Example of using Over](Images/Example%20of%20using%20OVER.png)

As you can see, the OVER() function add the average of the Rate into a new colunm of the table, instead of a single value as in the first query of the image. This shows the value that this function has, as it allows you to compare single values to calculated ones.

### PARTITION BY

The second function introduced is PARTITION BY(). This function goes inside the OVER() function and it allows you to make groups out of the data contained in the table, in order to gain granularity over the aggregation and group it within unique values inside the field you choose. For example you can make the SUM() of the sold items but present the data by category of product. In the next figure you will be able to watch an example case for the use of the PARTITION BY() function.

![Example of using PARTITION BY](Images/Example%20of%20using%20PARTITION%20BY.png)

### ROW NUMBER

The ROW_NUMBER() function helps you make a ranking in a straigh foward way when used alongside with the OVER() function. This function make a ranking ordering by a selected column but it handle poorly ties within the records with the exact same value, proceeding in a sequantial series of ranking, even if the values are identical. The next image provides an example of using the ROW_NUMBER() function.

![Example of using Row Number](Images/Example%20of%20using%20row%20number.png)

### RANK and DENSE RANK

With the RANK() and DENSE_RANK() functions you can make a ranking similar to the one from ROW_NUMBER(), but in this case the ties are ranked the same. The main difference between these two functions is that DENSE_RANK() continues with the next ranking number after a tie (e.g. if there are 3 items in the third place, the sixth one will have the fourth rank despite being the sixth item) while the RANK() function continues with the number of the position of the next item after a tie instead of the next ranking number (in the previous example, with this function the newt item after the tie in the third place will have the sixth rank).

### LEAD and LAG

LEAD() and LAG() are two functions that help you compare a record value with another one from above or over rows of the same table. This is helpful as you can watch and compare progresion between changes in the tables as you can have one value next to the previous one (or the next one depending on the function you choose). In the next figure you can see this functions in action, as they show in a new column which is the next vendor for the next order.

![Example of using LEAD and LAG](Images/Example%20of%20using%20LEAD%20and%20LAG.png)

## Using Subqueries

Sometimes, data analysis require many steps, for example by breaking the problem in smaller and more manageable pieces. In this section, we will cover several techniques in SQL to make this kind of approach.

### Subqueries

