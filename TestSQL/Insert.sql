use LibraryII;
-- Chèn dữ liệu vào bảng Customers
INSERT INTO Customers (Customer_ID, Customer_name, Customer_address, Customer_phone)
VALUES
(1, 'Customer1', 'Address1', 'Phone1'),
(2, 'Customer2', 'Address2', 'Phone2'),
(3, 'Customer3', 'Address3', 'Phone3'),
(4, 'Customer4', 'Address4', 'Phone4'),
(5, 'Customer5', 'Address5', 'Phone5'),
(6, 'Customer6', 'Address6', 'Phone6'),
(7, 'Customer7', 'Address7', 'Phone7'),
(8, 'Customer8', 'Address8', 'Phone8'),
(9, 'Customer9', 'Address9', 'Phone9'),
(10, 'Customer10', 'Address10', 'Phone10'),
(11, 'Customer11', 'Address11', 'Phone11'),
(12, 'Customer12', 'Address12', 'Phone12'),
(13, 'Customer13', 'Address13', 'Phone13'),
(14, 'Customer14', 'Address14', 'Phone14'),
(15, 'Customer15', 'Address15', 'Phone15');
-- Chèn dữ liệu vào bảng Staffs
INSERT INTO Staffs (Staff_ID, Staff_address, Staff_name, Staff_age, Staff_time)
VALUES
(1, 'StaffAddress1', 'StaffName1', 30, 'Full Time'),
(2, 'StaffAddress2', 'StaffName2', 25, 'Part Time'),
(3, 'StaffAddress3', 'StaffName3', 28, 'Full Time'),
(4, 'StaffAddress4', 'StaffName4', 22, 'Part Time'),
(5, 'StaffAddress5', 'StaffName5', 35, 'Full Time'),
(6, 'StaffAddress6', 'StaffName6', 27, 'Part Time'),
(7, 'StaffAddress7', 'StaffName7', 29, 'Full Time'),
(8, 'StaffAddress8', 'StaffName8', 24, 'Part Time'),
(9, 'StaffAddress9', 'StaffName9', 32, 'Full Time'),
(10, 'StaffAddress10', 'StaffName10', 26, 'Part Time');
-- Chèn dữ liệu vào bảng Authors
INSERT INTO Authors (Author_ID, Author_name, Author_age, Author_quantity)
VALUES
(1, 'Author1', 40, 10),
(2, 'Author2', 35, 8),
(3, 'Author3', 45, 12),
(4, 'Author4', 38, 7),
(5, 'Author5', 42, 15),
(6, 'Author6', 50, 9),
(7, 'Author7', 36, 11),
(8, 'Author8', 48, 14),
(9, 'Author9', 41, 6),
(10, 'Author10', 33, 10),
(11, 'Author11', 55, 8),
(12, 'Author12', 39, 13),
(13, 'Author13', 47, 9),
(14, 'Author14', 37, 11),
(15, 'Author15', 44, 12);

INSERT INTO Categories (Category_ID, Category_name)
VALUES
(1, 'Category1'),
(2, 'Category2'),
(3, 'Category3'),
(4, 'Category4'),
(5, 'Category5'),
(6, 'Category6'),
(7, 'Category7'),
(8, 'Category8'),
(9, 'Category9'),
(10, 'Category10'),
(11, 'Category11'),
(12, 'Category12'),
(13, 'Category13'),
(14, 'Category14'),
(15, 'Category15');

INSERT INTO Books (Book_ID, Book_info, Book_price, Book_publish, Publish_ID, Author_ID, Category_ID)
VALUES
    (1, 'Thông tin sách 21', 19.99, '2023-10-01 10:00:00', 1, 1, 1),
    (2, 'Thông tin sách 22', 24.99, '2023-10-02 11:00:00', 2, 2, 2),
    (3, 'Thông tin sách 23', 29.99, '2023-10-03 12:00:00', 3, 3, 3),
    (4, 'Thông tin sách 24', 14.99, '2023-10-04 13:00:00', 4, 4, 1),
    (5, 'Thông tin sách 25', 39.99, '2023-10-05 14:00:00', 5, 5, 2),
    (6, 'Thông tin sách 26', 29.99, '2023-10-06 15:00:00', 6, 1, 1),
    (7, 'Thông tin sách 27', 22.99, '2023-10-07 16:00:00', 7, 2, 3),
    (8, 'Thông tin sách 28', 17.99, '2023-10-08 17:00:00', 8, 3, 2),
    (9, 'Thông tin sách 29', 34.99, '2023-10-09 18:00:00', 9, 4, 1),
    (10, 'Thông tin sách 30', 26.99, '2023-10-10 19:00:00', 10, 5, 3),
    (11, 'Thông tin sách 31', 31.99, '2023-10-11 20:00:00', 11, 1, 2),
    (12, 'Thông tin sách 32', 19.99, '2023-10-12 21:00:00', 12, 2, 1),
    (13, 'Thông tin sách 33', 37.99, '2023-10-13 22:00:00', 13, 3, 3),
    (14, 'Thông tin sách 34', 27.99, '2023-10-14 23:00:00', 14, 4, 2),
    (15, 'Thông tin sách 35', 21.99, '2023-10-15 00:00:00', 15, 5, 1);

INSERT INTO Records (Record_ID, Book_ID, Customer_ID, Record_begin, Record_end, Staff_ID_borrow, Staff_ID_return)
VALUES
    (1, 1, 1, '2023-10-06 09:00:00', '2023-10-06 17:00:00', 1, 2),
    (2, 3, 2,  '2023-10-07 10:00:00', '2023-10-07 18:00:00', 3, 4),
    (3, 5, 3, '2023-10-08 11:00:00', '2023-10-08 19:00:00', 2, 1),
    (4, 4, 4,  '2023-10-09 12:00:00', '2023-10-09 20:00:00', 5, 6),
    (5, 2, 4,  '2023-10-10 13:00:00', '2023-10-10 21:00:00', 4, 3),
    (6, 6, 6,  '2023-10-11 14:00:00', '2023-10-11 22:00:00', 1, 5),
    (7, 9, 7,  '2023-10-12 15:00:00', '2023-10-12 23:00:00', 2, 4),
    (8, 7, 3,  '2023-10-13 16:00:00', '2023-10-13 00:00:00', 3, 2),
    (9, 10, 9,  '2023-10-14 17:00:00', '2023-10-14 01:00:00', 6, 1),
    (10, 12, 10,  '2023-10-15 18:00:00', '2023-10-15 02:00:00', 5, 3),
    (11, 11, 12,  '2023-10-16 19:00:00', '2023-10-16 03:00:00', 4, 6),
    (12, 13, 12,  '2023-10-17 20:00:00', '2023-10-17 04:00:00', 1, 2),
    (13, 14, 13,  '2023-10-18 21:00:00', '2023-10-18 05:00:00', 3, 5),
    (14, 15, 14,  '2023-10-19 22:00:00', '2023-10-19 06:00:00', 2, 4),
    (15, 8, 13,  '2023-10-20 23:00:00', '2023-10-20 07:00:00', 6, 1)
    ;

INSERT INTO Publishes (Publish_ID, Publish_name, Publish_address, Publish_website)
VALUES
(1, 'Publisher1', 'PublisherAddress1', 'www.publisher1.com'),
(2, 'Publisher2', 'PublisherAddress2', 'www.publisher2.com'),
(3, 'Publisher3', 'PublisherAddress3', 'www.publisher3.com'),
(4, 'Publisher4', 'PublisherAddress4', 'www.publisher4.com'),
(5, 'Publisher5', 'PublisherAddress5', 'www.publisher5.com'),
(6, 'Publisher6', 'PublisherAddress6', 'www.publisher6.com'),
(7, 'Publisher7', 'PublisherAddress7', 'www.publisher7.com'),
(8, 'Publisher8', 'PublisherAddress8', 'www.publisher8.com'),
(9, 'Publisher9', 'PublisherAddress9', 'www.publisher9.com'),
(10, 'Publisher10', 'PublisherAddress10', 'www.publisher10.com'),
(11, 'Publisher11', 'PublisherAddress11', 'www.publisher11.com'),
(12, 'Publisher12', 'PublisherAddress12', 'www.publisher12.com'),
(13, 'Publisher13', 'PublisherAddress13', 'www.publisher13.com'),
(14, 'Publisher14', 'PublisherAddress14', 'www.publisher14.com'),
(15, 'Publisher15', 'PublisherAddress15', 'www.publisher15.com');

INSERT INTO Reviews (Review_ID, Review_description, Customer_ID, Book_ID)
VALUES
(1, 'ReviewDescription1', 1, 1),
(2, 'ReviewDescription2', 5, 2),
(3, 'ReviewDescription3', 3, 2),
(4, 'ReviewDescription4', 6, 4),
(5, 'ReviewDescription5', 5, 5),
(6, 'ReviewDescription6', 15, 6),
(7, 'ReviewDescription7', 2, 5),
(8, 'ReviewDescription8', 8, 5),
(9, 'ReviewDescription9', 10, 9),
(10, 'ReviewDescription10', 10, 10),
(11, 'ReviewDescription11', 11, 11),
(12, 'ReviewDescription12', 12, 11),
(13, 'ReviewDescription13', 12, 13),
(14, 'ReviewDescription14', 15, 14),
(15, 'ReviewDescription15', 15, 15);

INSERT INTO Bookmarks (Bookmark_ID, Bookmark_page, Record_ID)
VALUES
(1, 50, 1),
(2, 75, 2),
(3, 30, 3),
(4, 10, 4),
(5, 60, 5),
(6, 25, 6),
(7, 15, 7),
(8, 40, 8),
(9, 70, 9),
(10, 55, 10),
(11, 80, 11),
(12, 20, 12),
(13, 45, 13),
(14, 5, 14),
(15, 35, 15);








