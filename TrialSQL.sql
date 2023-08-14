/*
Creating Tables for test data
*/
CREATE TABLE Products(id int primary key, "Name" text);
CREATE TABLE Categories(id int primary key, "Name" text);
Create Table ProductCategories
(
ProductId int foreign key references Products(id), 
CategoryId int foreign key references Categories(id), 
Primary Key (ProductId, CategoryId)
);
/*
Filling tables by test data
*/
insert into Products values (1, 'Product 1'), (2, 'Product 2'), (3, 'Product 3'), (4, 'Product 4'), (5, 'Product 5'), (6, 'Product 6');
insert into Categories values (1, 'Category 1'), (2, 'Category 2'), (3, 'Category 3');
insert into ProductCategories values (1,1), (2,1), (1,2), (1,3), (2,2), (3,3), (4,1), (5,3);

/*
SQL Query
*/
SELECT Products.Name, Categories.Name FROM Products 
LEFT JOIN ProductCategories ON Products.id = ProductCategories.ProductId
LEFT JOIN Categories ON ProductCategories.CategoryId = Categories.id;