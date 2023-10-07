use LibraryII;
create table Customers(
 Customer_ID int primary key,
 Customer_name varchar(25),
 Customer_address varchar(255),
 Customer_phone varchar(25)
 );
 create table Staffs(
 Staff_ID int primary key,
 Staff_address varchar(45),
 Staff_name varchar(45),
 Staff_age int,
 Staff_time varchar(45)
 );
 create table Authors
 ( Author_ID int primary key,
   Author_name varchar(45),
   Author_age int ,
   Author_quantity int
   );
create table Categories(
 Category_ID int primary key,
 Category_name varchar(100)
 );
 create table Books(
  Book_ID int primary key,
  Book_info varchar(1000) ,
  Book_price double,
  Book_publish datetime,
  Publish_ID int,
  Author_ID int,
  Category_ID int,
  foreign key(Publish_ID) references Publishes(Publish_ID),
  foreign key (Author_ID) references Authors(Author_ID),
  foreign key (Category_ID) references Categories(Category_ID)
  );
  create table Publishes(
    Publish_ID int primary key,
    Publish_name varchar(45),
	Publish_address varchar(45),
    Publish_website varchar(45)
    );
  create table Records(
   Record_ID int primary key,
   Book_ID int ,
   Customer_ID int,
   Record_begin datetime,
   Record_end datetime,
   Staff_ID_borrow int,
   Staff_ID_return int,
   foreign key (Customer_ID) references Customers(Customer_ID),
   foreign key (Book_ID) references Books(Book_ID),
   foreign key (Staff_ID_borrow) references Staffs(Staff_id),
   foreign key (Staff_ID_return) references Staffs(Staff_id)
   );
   create table Reviews(
    Review_ID int primary key,
    Review_description varchar(1000),
    Customer_ID int,
    Book_ID int,
    foreign key (Customer_ID) references Customers(Customer_ID),
    foreign key (Book_ID) references Books(Book_ID)
    );
	create table Records(
   Record_ID int primary key,
   Book_ID int ,
   Customer_ID int,
   Record_begin datetime,
   Record_end datetime,
   Staff_ID_borrow int,
   Staff_ID_return int,
   foreign key (Customer_ID) references Customers(Customer_ID),
   foreign key (Book_ID) references Books(Book_ID),
   foreign key (Staff_ID_borrow) references Staffs(Staff_id),
   foreign key (Staff_ID_return) references Staffs(Staff_id)
   );
    create table Bookmarks(
	Bookmark_ID int primary key,
	Bookmark_page int,
    Record_ID int,
    foreign key (Record_ID) references Records(Record_ID)
    );


    
   
 
 
   
 