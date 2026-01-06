use classess;
-- Drop table if exists
DROP TABLE IF EXISTS Sales1;

-- Create Sales1 table
CREATE TABLE Sales1 (
    TransactionID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerEmail VARCHAR(100),
    Product VARCHAR(100),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    DiscountPercent INT,
    SaleDate DATE,
    PaymentMethod VARCHAR(50),
    DeliveryAddress VARCHAR(255),
    City VARCHAR(50)
);

-- Insert 100 rows in one statement
INSERT INTO Sales1 (TransactionID, CustomerName, CustomerEmail, Product, Category, Quantity, Price, DiscountPercent, SaleDate, PaymentMethod, DeliveryAddress, City)
VALUES
(1, 'Mekhala Krishna', 'keya60@example.com', 'Kurti', 'Fashion', 1, 1299, 35, '2023-12-20', 'Card', '91/88
Hari Ganj', 'Delhi'),
(2, 'Timothy Sura', 'onirau@example.org', 'Perfume', 'Beauty', 1, 2999, 10, '2024-04-08', 'COD', '20/93
Varty Path', 'Bangalore'),
(3, 'Nisha Biswas', 'waliekani@example.org', 'Leather Jacket', 'Fashion', 2, 6999, 50, '2024-07-24', 'Card', 'H.No. 620, Doshi Circle', 'Mumbai'),
(4, 'Udarsh Purohit', 'udarshsachar@example.com', 'Nike Shoes', 'Fashion', 3, 4999, 15, '2024-09-19', 'UPI', '66/27
Behl Marg', 'Hyderabad'),
(5, 'Baghyawati Dhaliwal', 'anthonykonda@example.org', 'Kurti', 'Fashion', 1, 1299, 10, '2023-01-28', 'COD', '38/25
Bhardwaj', 'Kolkata'),
(6, 'Oscar Doshi', 'murtyelijah@example.net', 'Gaming Laptop', 'Electronics', 2, 89999, 40, '2024-09-17', 'UPI', 'H.No. 242
Kumer Path', 'Pune'),
(7, 'Vanya Dara', 'unni77@example.org', 'Washing Machine', 'Home', 1, 25999, 40, '2023-11-22', 'Wallet', '33/790, Prashad Marg', 'Mumbai'),
(8, 'Amara Bora', 'ishwarbir@example.net', 'Nike Shoes', 'Fashion', 3, 4999, 10, '2023-06-17', 'COD', 'H.No. 413, Nagar Road', 'Delhi'),
(9, 'Vasana Goyal', 'niharika16@example.org', 'Smartwatch', 'Electronics', 2, 14999, 40, '2024-11-07', 'Wallet', '95/255, Kibe Circle', 'Pune'),
(10, 'Gaurav Anne', 'patilbrinda@example.net', 'Microwave Oven', 'Home', 3, 15999, 15, '2023-09-13', 'Wallet', 'H.No. 255, Prabhakar Marg', 'Pune'),
(11, 'Vincent Saha', 'bariachavvi@example.net', 'Nike Shoes', 'Fashion', 3, 4999, 10, '2023-12-11', 'COD', 'H.No. 37, Bal Road', 'Delhi'),
(12, 'Devika Karpe', 'wchawla@example.org', 'Perfume', 'Beauty', 2, 2999, 50, '2023-09-30', 'COD', '50, Sekhon Ganj', 'Delhi'),
(13, 'Nicholas Deshpande', 'zmannan@example.com', 'Kurti', 'Fashion', 1, 1299, 20, '2024-08-13', 'COD', 'H.No. 945
Devi Road', 'Pune'),
(14, 'Kala Basu', 'harshilbasak@example.org', 'Nike Shoes', 'Fashion', 3, 4999, 15, '2023-12-17', 'Card', '76/19, Bobal Ganj', 'Kolkata'),
(15, 'Dalbir Mani', 'gautamtata@example.com', 'Nike Shoes', 'Fashion', 2, 4999, 10, '2023-11-01', 'Card', '670
Kuruvilla Chowk', 'Mumbai'),
(16, 'Bhavna Bali', 'pavanigopal@example.net', 'Perfume', 'Beauty', 1, 2999, 25, '2023-03-27', 'Wallet', 'H.No. 210, D’Alia Chowk', 'Hyderabad'),
(17, 'Fiyaz Datta', 'yogiyuvraj@example.net', 'Microwave Oven', 'Home', 2, 15999, 25, '2023-06-06', 'COD', 'H.No. 18, Mall Ganj', 'Bangalore'),
(18, 'Avni Wable', 'wchakraborty@example.com', 'Lipstick Combo', 'Beauty', 3, 1499, 40, '2023-05-23', 'Card', 'H.No. 100
Bahl Marg', 'Mumbai'),
(19, 'Nandini Bhattacharyya', 'qandra@example.com', 'Kurti', 'Fashion', 3, 1299, 25, '2023-05-31', 'COD', '052
Gera Nagar', 'Chennai'),
(20, 'Frado Wali', 'vidhi62@example.org', 'Nike Shoes', 'Fashion', 3, 4999, 15, '2023-06-05', 'Wallet', '50/34
Bava', 'Bangalore'),
(21, 'Daksh De', 'raviforum@example.com', 'Microwave Oven', 'Home', 1, 15999, 10, '2023-09-29', 'Wallet', 'H.No. 61
Nazareth Chowk', 'Mumbai'),
(22, 'Bhanumati Varghese', 'boraamara@example.net', 'Smartwatch', 'Electronics', 1, 14999, 30, '2024-03-05', 'UPI', '70/665, Narasimhan Path', 'Delhi'),
(23, 'Hemal Pillay', 'bhasinekalinga@example.org', 'Leather Jacket', 'Fashion', 3, 6999, 10, '2023-10-27', 'Card', 'H.No. 126, Nadig Chowk', 'Pune'),
(24, 'Vyanjana Sidhu', 'inaya40@example.net', 'Lipstick Combo', 'Beauty', 3, 1499, 40, '2023-04-17', 'Wallet', '94, Apte Path', 'Chennai'),
(25, 'Aradhana Pai', 'kaursai@example.net', 'Kurti', 'Fashion', 3, 1299, 40, '2024-08-16', 'COD', '574
Reddy Path', 'Kolkata'),
(26, 'Kiaan Subramaniam', 'ekavir01@example.net', 'Perfume', 'Beauty', 2, 2999, 40, '2023-02-05', 'COD', '17, Roy', 'Mumbai'),
(27, 'Janaki Rai', 'arin42@example.org', 'Nike Shoes', 'Fashion', 3, 4999, 20, '2023-03-27', 'COD', 'H.No. 954
Karnik Circle', 'Pune'),
(28, 'Qushi Chaudhuri', 'jacobgulati@example.org', 'Washing Machine', 'Home', 2, 25999, 35, '2024-09-09', 'Card', 'H.No. 83, Chaudry Path', 'Hyderabad'),
(29, 'Chanakya Sahota', 'tdeshpande@example.net', 'Nike Shoes', 'Fashion', 1, 4999, 50, '2024-04-07', 'UPI', '83/77, Patel Ganj', 'Mumbai'),
(30, 'Avni Loyal', 'ikshita69@example.com', 'Kurti', 'Fashion', 3, 1299, 25, '2024-04-01', 'COD', '54/745
Kara Road', 'Mumbai'),
(31, 'Wridesh Dalal', 'golaabeer@example.net', 'Perfume', 'Beauty', 3, 2999, 50, '2023-06-02', 'UPI', '669, Bhatt Street', 'Hyderabad'),
(32, 'Charita Roy', 'cbala@example.net', 'Nike Shoes', 'Fashion', 1, 4999, 30, '2024-02-10', 'Card', 'H.No. 900, Roy Circle', 'Mumbai'),
(33, 'Vrinda Sura', 'ekantaroy@example.org', 'Kurti', 'Fashion', 1, 1299, 50, '2023-06-01', 'COD', '52/156
Dutta', 'Pune'),
(34, 'Advay Bawa', 'nathan63@example.org', 'Kurti', 'Fashion', 3, 1299, 35, '2023-08-30', 'COD', 'H.No. 793, Modi Road', 'Kolkata'),
(35, 'Pahal Bansal', 'meera04@example.org', 'Leather Jacket', 'Fashion', 3, 6999, 40, '2023-06-30', 'Card', '58, Randhawa Road', 'Delhi'),
(36, 'Yatan Hans', 'tanaysubramanian@example.com', 'Microwave Oven', 'Home', 1, 15999, 20, '2023-09-26', 'Card', '80/027
Chowdhury Street', 'Delhi'),
(37, 'Ishaan Kalita', 'raksha96@example.net', 'Leather Jacket', 'Fashion', 1, 6999, 50, '2023-06-21', 'Card', '546
Issac Ganj', 'Bangalore'),
(38, 'Zaitra Solanki', 'kalevasatika@example.com', 'Washing Machine', 'Home', 3, 25999, 30, '2023-03-20', 'Wallet', 'H.No. 63
Mistry Path', 'Kolkata'),
(39, 'William Nayar', 'dubeylopa@example.com', 'Kurti', 'Fashion', 2, 1299, 40, '2023-01-14', 'UPI', '40, Mishra Chowk', 'Delhi'),
(40, 'Nihal Bala', 'devanidika@example.com', 'iPhone 14', 'Electronics', 2, 79999, 15, '2023-11-13', 'COD', 'H.No. 319, Goyal Marg', 'Hyderabad'),
(41, 'Dhriti Sunder', 'damini96@example.com', 'iPhone 14', 'Electronics', 3, 79999, 25, '2024-08-05', 'COD', '29/271
Deshpande Road', 'Hyderabad'),
(42, 'Pratyush Balakrishnan', 'hbaral@example.net', 'Perfume', 'Beauty', 3, 2999, 10, '2023-01-17', 'COD', '60/700
Saxena Chowk', 'Chennai'),
(43, 'Omya Agrawal', 'ekapad19@example.net', 'Microwave Oven', 'Home', 3, 15999, 40, '2023-12-05', 'COD', '48
Sekhon Zila', 'Hyderabad'),
(44, 'Utkarsh Parekh', 'nandini53@example.com', 'Kurti', 'Fashion', 1, 1299, 35, '2024-01-05', 'Wallet', '49
Khurana Path', 'Mumbai'),
(45, 'Nitesh Chada', 'voza@example.net', 'Microwave Oven', 'Home', 1, 15999, 15, '2024-04-22', 'Wallet', '05/686, Choudhary Nagar', 'Hyderabad'),
(46, 'Saumya Nazareth', 'avi29@example.com', 'Leather Jacket', 'Fashion', 3, 6999, 40, '2023-12-13', 'Wallet', 'H.No. 69
Bhargava Nagar', 'Pune'),
(47, 'Wriddhish Shetty', 'jsubramaniam@example.net', 'Gaming Laptop', 'Electronics', 1, 89999, 10, '2023-10-25', 'UPI', 'H.No. 09, Kumar Nagar', 'Mumbai'),
(48, 'Zinal Solanki', 'om22@example.net', 'Gaming Laptop', 'Electronics', 2, 89999, 15, '2023-11-01', 'COD', '50/69, Thaman Road', 'Mumbai'),
(49, 'Upasna Choudhry', 'jason56@example.org', 'Leather Jacket', 'Fashion', 1, 6999, 25, '2024-06-24', 'Card', '331
Gole Zila', 'Chennai'),
(50, 'Amrita Chaudhary', 'ddugar@example.net', 'Washing Machine', 'Home', 1, 25999, 40, '2023-03-03', 'Wallet', '216
Purohit Path', 'Mumbai'),
(51, 'Nidra Ghosh', 'xitimisra@example.net', 'Nike Shoes', 'Fashion', 2, 4999, 15, '2023-09-10', 'Card', '09/586, Kalla Nagar', 'Kolkata'),
(52, 'Mason Goswami', 'rayaan19@example.org', 'Lipstick Combo', 'Beauty', 2, 1499, 50, '2024-09-13', 'UPI', '99/95, Mand', 'Pune'),
(53, 'Anthony Vora', 'xborah@example.com', 'Washing Machine', 'Home', 2, 25999, 15, '2024-12-15', 'COD', 'H.No. 42
Mani Path', 'Kolkata'),
(54, 'Mahika Sheth', 'yasti67@example.com', 'Lipstick Combo', 'Beauty', 2, 1499, 40, '2024-08-17', 'UPI', 'H.No. 836
Ganesan Nagar', 'Kolkata'),
(55, 'Lucky Agarwal', 'naksh20@example.com', 'Leather Jacket', 'Fashion', 2, 6999, 25, '2024-12-08', 'UPI', '59/89
Shah Nagar', 'Pune'),
(56, 'Shivani Reddy', 'gbhakta@example.com', 'Washing Machine', 'Home', 1, 25999, 10, '2024-06-03', 'Card', '519, Kulkarni Ganj', 'Kolkata'),
(57, 'Hemang Malhotra', 'aachalpal@example.org', 'Gaming Laptop', 'Electronics', 3, 89999, 25, '2024-01-24', 'UPI', 'H.No. 661
Merchant Zila', 'Mumbai'),
(58, 'Yagnesh Baral', 'mohammedkaran@example.net', 'Gaming Laptop', 'Electronics', 1, 89999, 25, '2024-02-11', 'COD', '28
Bahl Path', 'Mumbai'),
(59, 'Lucky Chaudhari', 'falaksane@example.com', 'Perfume', 'Beauty', 3, 2999, 40, '2024-03-25', 'COD', 'H.No. 799, Parekh Ganj', 'Kolkata'),
(60, 'Ladli Krishnan', 'mohammedgill@example.com', 'Gaming Laptop', 'Electronics', 3, 89999, 50, '2023-04-06', 'UPI', 'H.No. 759
Raman Ganj', 'Pune'),
(61, 'Warhi Chaudhry', 'mpadmanabhan@example.org', 'Leather Jacket', 'Fashion', 3, 6999, 20, '2023-09-05', 'UPI', '650, Walla Marg', 'Kolkata'),
(62, 'Mohammed Shah', 'yastidugar@example.net', 'Microwave Oven', 'Home', 3, 15999, 40, '2023-08-11', 'UPI', '44
Kapoor Zila', 'Kolkata'),
(63, 'Dalaja Kulkarni', 'uchand@example.com', 'Microwave Oven', 'Home', 3, 15999, 15, '2023-05-31', 'Wallet', 'H.No. 52, Dalal Zila', 'Pune'),
(64, 'Kai Sawhney', 'urmigulati@example.com', 'Leather Jacket', 'Fashion', 2, 6999, 25, '2023-01-31', 'Card', '15/114, Char Chowk', 'Kolkata'),
(65, 'Suhani Sathe', 'aprasad@example.com', 'Washing Machine', 'Home', 2, 25999, 50, '2023-11-15', 'Card', '80/42
Pandya Zila', 'Delhi'),
(66, 'Ishwar Dugal', 'saneakshay@example.com', 'Gaming Laptop', 'Electronics', 1, 89999, 25, '2024-09-15', 'Wallet', '01/197, Grewal Ganj', 'Pune'),
(67, 'Neel Suresh', 'udhar@example.net', 'Leather Jacket', 'Fashion', 3, 6999, 40, '2023-11-25', 'Wallet', 'H.No. 90, Loke Nagar', 'Chennai'),
(68, 'Xiti Bakshi', 'jwalia@example.org', 'Gaming Laptop', 'Electronics', 3, 89999, 10, '2023-02-04', 'Wallet', 'H.No. 820
Balan Circle', 'Delhi'),
(69, 'Yauvani Sarna', 'hkoshy@example.net', 'Lipstick Combo', 'Beauty', 1, 1499, 35, '2023-01-02', 'COD', '03/39
Kaul Chowk', 'Bangalore'),
(70, 'Ekaraj Sarma', 'nikitasahota@example.com', 'iPhone 14', 'Electronics', 2, 79999, 25, '2024-08-03', 'COD', '24, Kannan Street', 'Bangalore'),
(71, 'Chaitaly Aggarwal', 'bhallapranit@example.net', 'Kurti', 'Fashion', 3, 1299, 40, '2024-08-10', 'Card', 'H.No. 18, Lala', 'Chennai'),
(72, 'Madhavi Choudhary', 'anya77@example.org', 'Microwave Oven', 'Home', 2, 15999, 40, '2024-07-07', 'UPI', '914
Misra Road', 'Kolkata'),
(73, 'Yashasvi Wagle', 'xnori@example.org', 'Kurti', 'Fashion', 1, 1299, 15, '2024-02-27', 'Card', 'H.No. 694
Kuruvilla Nagar', 'Mumbai'),
(74, 'Sathvik Bhatnagar', 'murthymason@example.com', 'Kurti', 'Fashion', 3, 1299, 40, '2023-01-21', 'Wallet', '21/40
Tripathi Road', 'Pune'),
(75, 'Lucky Bedi', 'hayeryashodhara@example.org', 'Perfume', 'Beauty', 3, 2999, 30, '2024-04-29', 'UPI', '76
Balasubramanian Road', 'Mumbai'),
(76, 'Eiravati Srinivas', 'samuel02@example.org', 'Washing Machine', 'Home', 2, 25999, 20, '2023-07-20', 'COD', '075, Chaudhry', 'Delhi'),
(77, 'Ati Dara', 'zmane@example.org', 'Smartwatch', 'Electronics', 1, 14999, 30, '2023-03-08', 'COD', '23/521
Varkey', 'Pune'),
(78, 'Samar Ghose', 'veer64@example.org', 'Lipstick Combo', 'Beauty', 2, 1499, 50, '2024-02-04', 'Wallet', '56/384, Kunda Zila', 'Delhi'),
(79, 'Libni Badal', 'gaurangiben@example.com', 'Gaming Laptop', 'Electronics', 1, 89999, 40, '2023-11-08', 'UPI', '95/90
Sengupta Road', 'Bangalore'),
(80, 'Anika Chander', 'parth81@example.org', 'Nike Shoes', 'Fashion', 1, 4999, 50, '2023-04-05', 'Wallet', '31/902
Hans Ganj', 'Pune'),
(81, 'Radhika Sarkar', 'mishraupkaar@example.com', 'Kurti', 'Fashion', 3, 1299, 10, '2024-09-25', 'Card', '640
Murthy Nagar', 'Hyderabad'),
(82, 'Zinal Gulati', 'chackofrado@example.net', 'Perfume', 'Beauty', 2, 2999, 50, '2023-04-28', 'COD', 'H.No. 368, Kanda Street', 'Pune'),
(83, 'Nilima Dave', 'tristan12@example.com', 'Washing Machine', 'Home', 1, 25999, 40, '2024-12-24', 'UPI', 'H.No. 10, Gulati Nagar', 'Bangalore'),
(84, 'Krisha Raja', 'badalyoshita@example.com', 'Kurti', 'Fashion', 2, 1299, 50, '2023-04-26', 'UPI', 'H.No. 512, Mishra', 'Kolkata'),
(85, 'Shaurya Sankar', 'kalewatika@example.com', 'Gaming Laptop', 'Electronics', 1, 89999, 25, '2024-06-23', 'Card', '56/143, Kunda Street', 'Hyderabad'),
(86, 'Nilima Banik', 'benjamin09@example.net', 'Leather Jacket', 'Fashion', 3, 6999, 30, '2023-09-26', 'Wallet', 'H.No. 55, Karan Circle', 'Bangalore'),
(87, 'Ranbir Chander', 'sibaldalaja@example.net', 'Washing Machine', 'Home', 1, 25999, 10, '2024-08-27', 'Wallet', '52/78
Toor Street', 'Mumbai'),
(88, 'Lila Dhar', 'kundadev@example.org', 'Washing Machine', 'Home', 3, 25999, 30, '2024-06-07', 'Wallet', '30/041, Srinivasan Zila', 'Delhi'),
(89, 'Amruta Ramachandran', 'bwali@example.org', 'Microwave Oven', 'Home', 3, 15999, 20, '2023-03-18', 'UPI', '49/654, Bava Marg', 'Delhi'),
(90, 'Amrita Sant', 'chaudhryjanya@example.net', 'Kurti', 'Fashion', 3, 1299, 35, '2024-08-29', 'UPI', 'H.No. 417
Luthra Chowk', 'Mumbai'),
(91, 'Girish Kohli', 'kguha@example.com', 'Washing Machine', 'Home', 2, 25999, 25, '2023-12-10', 'Card', '91/54, Sharma Zila', 'Pune'),
(92, 'Saksham Kohli', 'avnikalita@example.net', 'Perfume', 'Beauty', 1, 2999, 30, '2023-10-18', 'UPI', '81/73
Mahajan Zila', 'Hyderabad'),
(93, 'Viraj Sarma', 'baradzarna@example.net', 'Nike Shoes', 'Fashion', 2, 4999, 10, '2023-07-06', 'COD', '304
Modi Ganj', 'Chennai'),
(94, 'Ganga Kothari', 'rkar@example.net', 'iPhone 14', 'Electronics', 2, 79999, 10, '2024-04-08', 'COD', 'H.No. 812
Mistry Marg', 'Bangalore'),
(95, 'Yachana Joshi', 'atharv48@example.com', 'Gaming Laptop', 'Electronics', 1, 89999, 10, '2023-06-16', 'COD', '84, Kothari Marg', 'Kolkata'),
(96, 'Nilima Keer', 'gayathri79@example.net', 'Gaming Laptop', 'Electronics', 1, 89999, 15, '2023-08-30', 'UPI', '43
Vala Marg', 'Pune'),
(97, 'Chanakya Sura', 'singhalaarav@example.com', 'Perfume', 'Beauty', 2, 2999, 20, '2023-06-13', 'COD', 'H.No. 059
Memon Street', 'Bangalore'),
(98, 'Leena Narang', 'bhatnagarchaitaly@example.com', 'Microwave Oven', 'Home', 3, 15999, 35, '2023-09-26', 'COD', '97
Brahmbhatt Nagar', 'Mumbai'),
(99, 'Darsh Naik', 'hemamody@example.org', 'Washing Machine', 'Home', 2, 25999, 50, '2023-07-02', 'COD', 'H.No. 18
Sathe Path', 'Mumbai'),
(100, 'Nicholas Vig', 'aadi10@example.net', 'Perfume', 'Beauty', 1, 2999, 20, '2023-01-25', 'COD', 'H.No. 642, Madan Nagar', 'Pune');


select * from sales1;