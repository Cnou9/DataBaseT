use Store2;
create table Categories(
 category_id int primary key,
 category_name varchar(255)
 );
 create table Products(
  product_id int primary key,
  product_name varchar(255),
  price double ,
  category_id int,
  foreign key (category_id) references Categories(category_id)
  );
  create table Customers(
   customer_id int primary key ,
   customer_name varchar(255),
   email varchar(255)
   );
   create table Orders(
    order_id int primary key,
    customer_id int,
    foreign key (customer_id ) references Customers(customer_id ),
    order_date date 
    );
    create table OrderDetails(
     order_detail_id int,
     quantity int,
     order_id int,
      product_id int,
     foreign key (order_id) references Orders(order_id),
     foreign key (product_id) references Products(product_id)
     );
     ----------
INSERT INTO Categories (category_id, category_name)
VALUES
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Books'),
    (4, 'Home & Garden'),
    (5, 'Toys'),
    (6, 'Sports & Outdoors'),
    (7, 'Beauty'),
    (8, 'Automotive'),
    (9, 'Health & Wellness'),
    (10, 'Jewelry');
INSERT INTO Products (product_id, product_name, price, category_id)
VALUES
    (1, 'Smartphone', 599.99, 1),
    (2, 'Laptop', 999.99, 1),
    (3, 'T-Shirt', 19.99, 2),
    (4, 'Jeans', 49.99, 2),
    (5, 'The Great Gatsby', 9.99, 3),
    (6, 'Cookware Set', 79.99, 4),
    (7, 'Action Figure', 12.99, 5),
    (8, 'Soccer Ball', 19.99, 6),
    (9, 'Shampoo', 5.99, 7),
    (10, 'Car Oil', 29.99, 8);
INSERT INTO Customers (customer_id, customer_name, email)
VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Bob Johnson', 'bob@example.com'),
    (4, 'Alice Brown', 'alice@example.com'),
    (5, 'David Wilson', 'david@example.com'),
    (6, 'Emily Davis', 'emily@example.com'),
    (7, 'Michael Lee', 'michael@example.com'),
    (8, 'Sarah Clark', 'sarah@example.com'),
    (9, 'Chris Martin', 'chris@example.com'),
    (10, 'Olivia White', 'olivia@example.com');
INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
    (1, 1, '2023-09-28'),
    (2, 2, '2023-09-29'),
    (3, 3, '2023-09-29'),
    (4, 4, '2023-09-30'),
    (5, 5, '2023-09-30'),
    (6, 6, '2023-10-01'),
    (7, 7, '2023-10-02'),
    (8, 8, '2023-10-03'),
    (9, 9, '2023-10-03'),
    (10, 10, '2023-10-04'),
    (11, 1, '2023-09-28'),
    (12, 1, '2023-09-29'),
    (13, 3, '2023-09-29')
 ;
    
INSERT INTO OrderDetails (order_detail_id, quantity, order_id, product_id)
VALUES
    (1, 2, 1, 1),
    (2, 1, 1, 2),
    (3, 3, 2, 3),
    (4, 2, 2, 4),
    (5, 1, 3, 5),
    (6, 1, 3, 6),
    (7, 2, 4, 7),
    (8, 1, 4, 8),
    (9, 4, 5, 9),
    (10, 2, 5, 10),
	(11, 2, 11, 1),
    (12, 1, 12, 2),
    (13, 3, 13, 3);
    
-------
-- 1 Lấy thông tin tất cả các sản phẩm đã được đặt trong một đơn đặt hàng cụ thể.
select Products.product_name,Products.price,OrderDetails.quantity
from Products
join OrderDetails
on Products.product_id=OrderDetails.product_id
where order_id=1;
-- 2 Tính tổng số tiền trong một đơn đặt hàng cụ thể.
select sum(Products.price * OrderDetails.quantity) AS total_cost
from OrderDetails
join Products on OrderDetails.product_id = Products.product_id
where OrderDetails.order_id = 1;
-- 3 Lấy danh sách các sản phẩm chưa có trong bất kỳ đơn đặt hàng nào.
select Products.product_name
from Products join OrderDetails
on OrderDetails.product_id = Products.product_id
where OrderDetails.quantity = 3;
-- 4 Đếm số lượng sản phẩm trong mỗi danh mục. (category_name, total_products)
select category_name,count(products)
from Categories join Products
on Categories.category_id=Products.category_id
group by category_name;
-- 5 Tính tổng số lượng sản phẩm đã đặt bởi mỗi khách hàng (customer_name, total_ordered)
select Customers.customer_name, sum(OrderDetails.quantity) as total_ordered
from Customers
join Orders on Customers.customer_id=Orders.customer_id
join OrderDetails on Orders.order_id=OrderDetails.order_id
group by Customers.customer_name;
-- 6 Lấy thông tin danh mục có nhiều sản phẩm nhất (category_name, product_count)
select Count(Products.product_id) as product_count,Categories.category_name
from Categories
join Products
on Categories.category_id=Products.category_id
group by Categories.category_name
order by product_count desc
limit 1
;
-- 7 Tính tổng số sản phẩm đã được đặt cho mỗi danh mục (category_name, total_ordered)
select sum(OrderDetails.quantity) as total_orderes,Categories.category_name
from Categories
join Products
on Categories.category_id=Products.category_id
join OrderDetails
on Products.product_id=OrderDetails.product_id
group by Categories.category_name;
-- 8 Lấy thông tin về top 3 khách hàng có số lượng sản phẩm đặt hàng lớn nhất (customer_id, customer_name, total_ordered)
select Customers.customer_id,Customers.customer_name , sum(OrderDetails.quantity) as total_ordered from Customers
join Orders on Orders.customer_id=Customers.customer_id
join OrderDetails on OrderDetails.order_id=Orders.order_id
group by Customers.customer_id
order by total_ordered desc
limit 3;
-- 9 Lấy thông tin về khách hàng đã đặt hàng nhiều hơn một lần trong khoảng thời gian cụ thể từ ngày A -> ngày B (customer_id, customer_name, total_orders)
select Customers.customer_id,Customers.customer_name, count(Orders.order_id) as total_orders
from Customers
join Orders on Customers.customer_id = Orders.customer_id
where Orders.order_date between '2023-09-28' and '2023-10-04'
group by Customers.customer_id
having total_orders>1;
-- 10 Lấy thông tin về các sản phẩm đã được đặt hàng nhiều lần nhất và số lượng đơn đặt hàng tương ứng (product_id, product_name, total_ordered)
select Products.product_id, Products.product_name, COUNT(Orders.order_id) AS total_ordered
from Products
join OrderDetails ON Products.product_id = OrderDetails.product_id
join Orders ON OrderDetails.order_id = Orders.order_id
group by Products.product_id, Products.product_name
having total_ordered = (
    select MAX(order_count)
    from (
        select Products.product_id, COUNT(Orders.order_id) AS order_count
        from Products
        join OrderDetails ON Products.product_id = OrderDetails.product_id
        join Orders ON OrderDetails.order_id = Orders.order_id
        group by Products.product_id
    ) as product_orders
);



     
    