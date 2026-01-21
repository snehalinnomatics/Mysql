use school;

-- ===== INSERT BRANCHES =====
INSERT INTO branches (branch_name, city) VALUES
('Shivaji Nagar Branch', 'Pune'),
('Fort Branch', 'Mumbai'),
('Civil Lines Branch', 'Nagpur');

-- ===== INSERT DEPARTMENTS =====
INSERT INTO department (dept_name) VALUES
('Science'),
('Commerce'),
('Arts'),
('Administration'),
('Sports'),
('Computer Lab');

-- ===== INSERT CLASSES =====
-- Pune Branch (branch_id = 1)
INSERT INTO classes (class_id, branch_id, class_name) VALUES
('sci_101', 1, 'Science'),
('art_101', 1, 'Arts'),
('com_101', 1, 'Commerce');

-- Mumbai Branch (branch_id = 2)
INSERT INTO classes (class_id, branch_id, class_name) VALUES
('sci_102', 2, 'Science'),
('art_102', 2, 'Arts'),
('com_102', 2, 'Commerce');

-- Nagpur Branch (branch_id = 3)
INSERT INTO classes (class_id, branch_id, class_name) VALUES
('sci_103', 3, 'Science'),
('art_103', 3, 'Arts'),
('com_103', 3, 'Commerce');

-- EMPLOYEES (TEACHERS)
INSERT INTO employee (emp_name, qualification, designation, phone, email, address, dept_id) VALUES
('Amit Kulkarni', 'MSc Physics', 'Teacher', '9876500001', 'amit.kulkarni@school.com', 'Pune', 1),
('Sneha Joshi', 'MCom', 'Teacher', '9876500002', 'sneha.joshi@school.com', 'Mumbai', 2),
('Rahul Patil', 'MA History', 'Teacher', '9876500003', 'rahul.patil@school.com', 'Nagpur', 3),
('Pooja Deshmukh', 'MSc Chemistry', 'Teacher', '9876500004', 'pooja.deshmukh@school.com', 'Pune', 1),
('Vikas Shinde', 'MCom', 'Teacher', '9876500005', 'vikas.shinde@school.com', 'Mumbai', 2),
('Tejaswini Gokhale', 'MA English', 'Teacher', '9876500006', 'tejaswini.g@school.com', 'Nagpur', 3),
('Rohan Kadam', 'MSc Math', 'Teacher', '9876500007', 'rohan.kadam@school.com', 'Pune', 1),
('Neha More', 'MA Hindi', 'Teacher', '9876500008', 'neha.more@school.com', 'Mumbai', 3),
('Sagar Jadhav', 'MSc Biology', 'Teacher', '9876500009', 'sagar.jadhav@school.com', 'Nagpur', 1),
('Komal Patankar', 'MA Geography', 'Teacher', '9876500010', 'komal.p@school.com', 'Pune', 3),
('Manoj Rane', 'MSc Electronics', 'Teacher', '9876500011', 'manoj.rane@school.com', 'Mumbai', 1),
('Pranali Kamat', 'MA Economics', 'Teacher', '9876500012', 'pranali.k@school.com', 'Nagpur', 2),
('Sameer Gaikwad', 'MSc Computer', 'Teacher', '9876500013', 'sameer.g@school.com', 'Pune', 6),
('Kavita Phanse', 'MCom', 'Teacher', '9876500014', 'kavita.p@school.com', 'Mumbai', 2),
('Nitin Pawar', 'MA Political Science', 'Teacher', '9876500015', 'nitin.p@school.com', 'Nagpur', 3),
('Sheetal Inamdar', 'MSc Botany', 'Teacher', '9876500016', 'sheetal.i@school.com', 'Pune', 1),
('Jayesh Dhole', 'MA Sociology', 'Teacher', '9876500017', 'jayesh.d@school.com', 'Mumbai', 3),
('Meera Bhide', 'MSc Zoology', 'Teacher', '9876500018', 'meera.b@school.com', 'Nagpur', 1),
('Suresh Kharat', 'MCom', 'Teacher', '9876500019', 'suresh.k@school.com', 'Pune', 2),
('Ankita Purohit', 'MA Psychology', 'Teacher', '9876500020', 'ankita.p@school.com', 'Mumbai', 3),
('Mahesh Borkar', 'BA', 'Clerk', '9876500021', 'mahesh.b@school.com', 'Pune', 4),
('Sunita Pawar', 'HSC', 'Office Assistant', '9876500022', 'sunita.p@school.com', 'Mumbai', 4),
('Raghav Shirsat', 'BCom', 'Accountant', '9876500023', 'raghav.s@school.com', 'Nagpur', 4),
('Anjali Thorat', 'HSC', 'Receptionist', '9876500024', 'anjali.t@school.com', 'Pune', 4),
('Pravin Londhe', 'Diploma', 'Lab Assistant', '9876500025', 'pravin.l@school.com', 'Mumbai', 6),
('Varsha Kadam', 'BA', 'Librarian', '9876500026', 'varsha.k@school.com', 'Nagpur', 4),
('Deepak Wagh', 'BPEd', 'Sports Coach', '9876500027', 'deepak.w@school.com', 'Pune', 5),
('Shital Raje', 'MA', 'Counselor', '9876500028', 'shital.r@school.com', 'Mumbai', 4),
('Ramesh Mohite', 'SSC', 'Peon', '9876500029', 'ramesh.m@school.com', 'Nagpur', 4),
('Veena Loke', 'BSc', 'Lab Technician', '9876500030', 'veena.l@school.com', 'Pune', 6);

-- INSERT 20 TEACHERS
INSERT INTO teachers (teacher_name, qualification, designation, phone, email, emp_id, dept_id) VALUES
('Amit Kulkarni', 'MSc Physics', 'Teacher', '9876500001', 'amit.kulkarni@school.com', 1, 1),
('Sneha Joshi', 'MCom', 'Teacher', '9876500002', 'sneha.joshi@school.com', 2, 2),
('Rahul Patil', 'MA History', 'Teacher', '9876500003', 'rahul.patil@school.com', 3, 3),
('Pooja Deshmukh', 'MSc Chemistry', 'Teacher', '9876500004', 'pooja.deshmukh@school.com', 4, 1),
('Vikas Shinde', 'MCom', 'Teacher', '9876500005', 'vikas.shinde@school.com', 5, 2),
('Tejaswini Gokhale', 'MA English', 'Teacher', '9876500006', 'tejaswini.g@school.com', 6, 3),
('Rohan Kadam', 'MSc Math', 'Teacher', '9876500007', 'rohan.kadam@school.com', 7, 1),
('Neha More', 'MA Hindi', 'Teacher', '9876500008', 'neha.more@school.com', 8, 3),
('Sagar Jadhav', 'MSc Biology', 'Teacher', '9876500009', 'sagar.jadhav@school.com', 9, 1),
('Komal Patankar', 'MA Geography', 'Teacher', '9876500010', 'komal.p@school.com', 10, 3),
('Manoj Rane', 'MSc Electronics', 'Teacher', '9876500011', 'manoj.rane@school.com', 11, 1),
('Pranali Kamat', 'MA Economics', 'Teacher', 'pranali.k@school.com', '9876500012', 12, 2),
('Sameer Gaikwad', 'MSc Computer', 'Teacher', '9876500013', 'sameer.g@school.com', 13, 6),
('Kavita Phanse', 'MCom', 'Teacher', '9876500014', 'kavita.p@school.com', 14, 2),
('Nitin Pawar', 'MA Political Science', 'Teacher', '9876500015', 'nitin.p@school.com', 15, 3),
('Sheetal Inamdar', 'MSc Botany', 'Teacher', '9876500016', 'sheetal.i@school.com', 16, 1),
('Jayesh Dhole', 'MA Sociology', 'Teacher', 'jayesh.d@school.com', '9876500017', 17, 3),
('Meera Bhide', 'MSc Zoology', 'Teacher', 'meera.b@school.com', '9876500018', 18, 1),
('Suresh Kharat', 'MCom', 'Teacher', 'suresh.k@school.com', '9876500019', 19, 2),
('Ankita Purohit', 'MA Psychology', 'Teacher', 'ankita.p@school.com', '9876500020', 20, 3);

-- insert students
-- Pune Branch (sci_101, art_101, com_101)
INSERT INTO students (name, age, phone, email, address, class_id) VALUES
('Aarav Deshmukh', 16, '9000000001', 'aarav.d@school.com', 'Pune', 'sci_101'),
('Riya Patil', 15, '9000000002', 'riya.p@school.com', 'Pune', 'sci_101'),
('Vivaan Kulkarni', 16, '9000000003', 'vivaan.k@school.com', 'Pune', 'sci_101'),
('Ananya Joshi', 15, '9000000004', 'ananya.j@school.com', 'Pune', 'sci_101'),
('Aditya More', 16, '9000000005', 'aditya.m@school.com', 'Pune', 'sci_101'),
('Saanvi Patankar', 15, '9000000006', 'saanvi.p@school.com', 'Pune', 'art_101'),
('Ishaan Rane', 16, '9000000007', 'ishaan.r@school.com', 'Pune', 'art_101'),
('Myra Jadhav', 15, '9000000008', 'myra.j@school.com', 'Pune', 'art_101'),
('Shaurya Pawar', 16, '9000000009', 'shaurya.p@school.com', 'Pune', 'com_101'),
('Kavya Kulkarni', 15, '9000000010', 'kavya.k@school.com', 'Pune', 'com_101'),
('Raghav Deshpande', 16, '9000000011', 'raghav.d@school.com', 'Pune', 'com_101'),
('Aditi Shinde', 15, '9000000012', 'aditi.s@school.com', 'Pune', 'sci_101'),
('Anish More', 16, '9000000013', 'anish.m@school.com', 'Pune', 'sci_101'),
('Diya Patil', 15, '9000000014', 'diya.p@school.com', 'Pune', 'art_101'),
('Karan Joshi', 16, '9000000015', 'karan.j@school.com', 'Pune', 'art_101'),
('Meera Kadam', 15, '9000000016', 'meera.k@school.com', 'Pune', 'com_101'),
('Aryan Raje', 16, '9000000017', 'aryan.r@school.com', 'Pune', 'com_101'),
('Tara Deshmukh', 15, '9000000018', 'tara.d@school.com', 'Pune', 'sci_101'),
('Devansh Shirsat', 16, '9000000019', 'devansh.s@school.com', 'Pune', 'art_101'),
('Naina Phadke', 15, '9000000020', 'naina.p@school.com', 'Pune', 'com_101');

-- Mumbai Branch (sci_102, art_102, com_102)
INSERT INTO students (name, age, phone, email, address, class_id) VALUES
('Rohan Mehta', 16, '9000000021', 'rohan.m@school.com', 'Mumbai', 'sci_102'),
('Sanya Gupta', 15, '9000000022', 'sanya.g@school.com', 'Mumbai', 'sci_102'),
('Anvit Sharma', 16, '9000000023', 'anvit.s@school.com', 'Mumbai', 'sci_102'),
('Ira Khanna', 15, '9000000024', 'ira.k@school.com', 'Mumbai', 'art_102'),
('Kabir Malhotra', 16, '9000000025', 'kabir.m@school.com', 'Mumbai', 'art_102'),
('Tanishka Kapoor', 15, '9000000026', 'tanishka.k@school.com', 'Mumbai', 'art_102'),
('Siddhant Verma', 16, '9000000027', 'siddhant.v@school.com', 'Mumbai', 'com_102'),
('Kiara Choudhary', 15, '9000000028', 'kiara.c@school.com', 'Mumbai', 'com_102'),
('Aryan Sharma', 16, '9000000029', 'aryan.s@school.com', 'Mumbai', 'com_102'),
('Anika Rathi', 15, '9000000030', 'anika.r@school.com', 'Mumbai', 'sci_102'),
('Ritvik Joshi', 16, '9000000031', 'ritvik.j@school.com', 'Mumbai', 'sci_102'),
('Aarohi Mehra', 15, '9000000032', 'aarohi.m@school.com', 'Mumbai', 'art_102'),
('Vivaan Khurana', 16, '9000000033', 'vivaan.kh@school.com', 'Mumbai', 'art_102'),
('Prisha Agarwal', 15, '9000000034', 'prisha.a@school.com', 'Mumbai', 'com_102'),
('Reyansh Gupta', 16, '9000000035', 'reyansh.g@school.com', 'Mumbai', 'com_102'),
('Anaya Sharma', 15, '9000000036', 'anaya.s@school.com', 'Mumbai', 'sci_102'),
('Devika Kapoor', 16, '9000000037', 'devika.k@school.com', 'Mumbai', 'art_102'),
('Arjun Mehta', 15, '9000000038', 'arjun.m@school.com', 'Mumbai', 'com_102'),
('Sahana Rathi', 16, '9000000039', 'sahana.r@school.com', 'Mumbai', 'sci_102'),
('Vivaan Khanna', 15, '9000000040', 'vivaan.kh@school.com', 'Mumbai', 'art_102');

-- Nagpur Branch (sci_103, art_103, com_103)
INSERT INTO students (name, age, phone, email, address, class_id) VALUES
('Aarav Jadhav', 16, '9000000041', 'aarav.j@school.com', 'Nagpur', 'sci_103'),
('Riya Sharma', 15, '9000000042', 'riya.sh@school.com', 'Nagpur', 'sci_103'),
('Vivaan Gupta', 16, '9000000043', 'vivaan.g@school.com', 'Nagpur', 'sci_103'),
('Ananya Patil', 15, '9000000044', 'ananya.p@school.com', 'Nagpur', 'art_103'),
('Aditya Joshi', 16, '9000000045', 'aditya.j@school.com', 'Nagpur', 'art_103'),
('Saanvi Deshmukh', 15, '9000000046', 'saanvi.d@school.com', 'Nagpur', 'art_103'),
('Ishaan Rane', 16, '9000000047', 'ishaan.r@school.com', 'Nagpur', 'com_103'),
('Myra Kulkarni', 15, '9000000048', 'myra.k@school.com', 'Nagpur', 'com_103'),
('Shaurya More', 16, '9000000049', 'shaurya.m@school.com', 'Nagpur', 'com_103'),
('Kavya Shinde', 15, '9000000050', 'kavya.s@school.com', 'Nagpur', 'sci_103'),
('Raghav Patankar', 16, '9000000051', 'raghav.p@school.com', 'Nagpur', 'sci_103'),
('Aditi Rathi', 15, '9000000052', 'aditi.r@school.com', 'Nagpur', 'art_103'),
('Anish Khanna', 16, '9000000053', 'anish.k@school.com', 'Nagpur', 'art_103'),
('Diya Kapoor', 15, '9000000054', 'diya.k@school.com', 'Nagpur', 'com_103'),
('Karan Sharma', 16, '9000000055', 'karan.sh@school.com', 'Nagpur', 'com_103'),
('Meera Verma', 15, '9000000056', 'meera.v@school.com', 'Nagpur', 'sci_103'),
('Aryan Agarwal', 16, '9000000057', 'aryan.a@school.com', 'Nagpur', 'art_103'),
('Tara Mehra', 15, '9000000058', 'tara.m@school.com', 'Nagpur', 'art_103'),
('Devansh Rathi', 16, '9000000059', 'devansh.r@school.com', 'Nagpur', 'com_103'),
('Naina Khurana', 15, '9000000060', 'naina.k@school.com', 'Nagpur', 'com_103');

-- Pune Branch (sci_101, art_101, com_101)
INSERT INTO students (name, age, phone, email, address, class_id) VALUES
('Arnav Kulkarni', 16, '9000000061', 'arnav.k@school.com', 'Pune', 'sci_101'),
('Isha Patil', 15, '9000000062', 'isha.p@school.com', 'Pune', 'sci_101'),
('Krishna More', 16, '9000000063', 'krishna.m@school.com', 'Pune', 'sci_101'),
('Mira Joshi', 15, '9000000064', 'mira.j@school.com', 'Pune', 'art_101'),
('Ansh Rane', 16, '9000000065', 'ansh.r@school.com', 'Pune', 'art_101'),
('Kiara Shinde', 15, '9000000066', 'kiara.s@school.com', 'Pune', 'art_101'),
('Dhruv Deshpande', 16, '9000000067', 'dhruv.d@school.com', 'Pune', 'com_101'),
('Aarya Kulkarni', 15, '9000000068', 'aarya.k@school.com', 'Pune', 'com_101'),
('Ritvik Patil', 16, '9000000069', 'ritvik.p@school.com', 'Pune', 'com_101'),
('Tanvi Rathi', 15, '9000000070', 'tanvi.r@school.com', 'Pune', 'sci_101');

-- Mumbai Branch (sci_102, art_102, com_102)
INSERT INTO students (name, age, phone, email, address, class_id) VALUES
('Samar Mehta', 16, '9000000071', 'samar.m@school.com', 'Mumbai', 'sci_102'),
('Anvi Gupta', 15, '9000000072', 'anvi.g@school.com', 'Mumbai', 'sci_102'),
('Ritvik Sharma', 16, '9000000073', 'ritvik.sh@school.com', 'Mumbai', 'art_102'),
('Kiara Kapoor', 15, '9000000074', 'kiara.kap@school.com', 'Mumbai', 'art_102'),
('Ayaan Mehta', 16, '9000000075', 'ayaan.m@school.com', 'Mumbai', 'com_102'),
('Myra Verma', 15, '9000000076', 'myra.v@school.com', 'Mumbai', 'com_102'),
('Devansh Rathi', 16, '9000000077', 'devansh.r@school.com', 'Mumbai', 'sci_102'),
('Saanvi Khurana', 15, '9000000078', 'saanvi.k@school.com', 'Mumbai', 'art_102'),
('Arjun Mehta', 16, '9000000079', 'arjun.m@school.com', 'Mumbai', 'com_102'),
('Tara Sharma', 15, '9000000080', 'tara.s@school.com', 'Mumbai', 'sci_102');

-- Nagpur Branch (sci_103, art_103, com_103)
INSERT INTO students (name, age, phone, email, address, class_id) VALUES
('Arnav Jadhav', 16, '9000000081', 'arnav.j@school.com', 'Nagpur', 'sci_103'),
('Isha Sharma', 15, '9000000082', 'isha.sh@school.com', 'Nagpur', 'sci_103'),
('Krishna Gupta', 16, '9000000083', 'krishna.g@school.com', 'Nagpur', 'sci_103'),
('Mira Patil', 15, '9000000084', 'mira.p@school.com', 'Nagpur', 'art_103'),
('Ansh Joshi', 16, '9000000085', 'ansh.j@school.com', 'Nagpur', 'art_103'),
('Kiara Deshmukh', 15, '9000000086', 'kiara.d@school.com', 'Nagpur', 'art_103'),
('Dhruv Rane', 16, '9000000087', 'dhruv.r@school.com', 'Nagpur', 'com_103'),
('Aarya Shinde', 15, '9000000088', 'aarya.s@school.com', 'Nagpur', 'com_103'),
('Ritvik More', 16, '9000000089', 'ritvik.m@school.com', 'Nagpur', 'com_103'),
('Tanvi Kulkarni', 15, '9000000090', 'tanvi.k@school.com', 'Nagpur', 'sci_103'),
('Samar Deshpande', 16, '9000000091', 'samar.d@school.com', 'Nagpur', 'sci_103'),
('Anvi Patankar', 15, '9000000092', 'anvi.p@school.com', 'Nagpur', 'art_103'),
('Ritvik Rathi', 16, '9000000093', 'ritvik.r@school.com', 'Nagpur', 'art_103'),
('Kiara Mehta', 15, '9000000094', 'kiara.m@school.com', 'Nagpur', 'com_103'),
('Ayaan Sharma', 16, '9000000095', 'ayaan.sh@school.com', 'Nagpur', 'com_103'),
('Myra Khurana', 15, '9000000096', 'myra.k@school.com', 'Nagpur', 'sci_103'),
('Devansh Mehta', 16, '9000000097', 'devansh.m@school.com', 'Nagpur', 'art_103'),
('Saanvi Sharma', 15, '9000000098', 'saanvi.sh@school.com', 'Nagpur', 'art_103'),
('Arjun Verma', 16, '9000000099', 'arjun.v@school.com', 'Nagpur', 'com_103'),
('Tara Khanna', 15, '9000000100', 'tara.k@school.com', 'Nagpur', 'com_103');


-- teacher_class
-- SCIENCE CLASSES
INSERT INTO teacher_class (teacher_id, class_id) VALUES
(1, 'sci_101'),
(4, 'sci_101'),
(7, 'sci_102'),
(10, 'sci_102'),
(13, 'sci_103'),
(16, 'sci_103');

-- ARTS CLASSES
INSERT INTO teacher_class (teacher_id, class_id) VALUES
(6, 'art_101'),
(9, 'art_101'),
(2, 'art_102'),
(5, 'art_102'),
(8, 'art_103'),
(11, 'art_103');

-- COMMERCE CLASSES
INSERT INTO teacher_class (teacher_id, class_id) VALUES
(3, 'com_101'),
(12, 'com_101'),
(14, 'com_102'),
(17, 'com_102'),
(15, 'com_103'),
(20, 'com_103');


-- Fees
INSERT INTO fees (student_id, total_amt, amount_paid, payment_date) VALUES
(1, 50000, 20000, '2025-11-25'),
(2, 50000, 50000, '2025-11-25'),
(3, 50000, 35000, '2025-11-25'),
(4, 50000, 50000, '2025-11-25'),
(5, 50000, 40000, '2025-11-25'),
(6, 50000, 50000, '2025-11-25'),
(7, 50000, 25000, '2025-11-25'),
(8, 50000, 30000, '2025-11-25'),
(9, 50000, 50000, '2025-11-25'),
(10, 50000, 45000, '2025-11-25'),
(11, 50000, 50000, '2025-11-25'),
(12, 50000, 20000, '2025-11-25'),
(13, 50000, 50000, '2025-11-25'),
(14, 50000, 35000, '2025-11-25'),
(15, 50000, 50000, '2025-11-25'),
(16, 50000, 40000, '2025-11-25'),
(17, 50000, 25000, '2025-11-25'),
(18, 50000, 50000, '2025-11-25'),
(19, 50000, 45000, '2025-11-25'),
(20, 50000, 50000, '2025-11-25'),
(21, 50000, 30000, '2025-11-25'),
(22, 50000, 50000, '2025-11-25'),
(23, 50000, 25000, '2025-11-25'),
(24, 50000, 40000, '2025-11-25'),
(25, 50000, 50000, '2025-11-25'),
(26, 50000, 35000, '2025-11-25'),
(27, 50000, 50000, '2025-11-25'),
(28, 50000, 45000, '2025-11-25'),
(29, 50000, 50000, '2025-11-25'),
(30, 50000, 20000, '2025-11-25'),
(31, 50000, 50000, '2025-11-25'),
(32, 50000, 30000, '2025-11-25'),
(33, 50000, 50000, '2025-11-25'),
(34, 50000, 40000, '2025-11-25'),
(35, 50000, 50000, '2025-11-25'),
(36, 50000, 35000, '2025-11-25'),
(37, 50000, 50000, '2025-11-25'),
(38, 50000, 45000, '2025-11-25'),
(39, 50000, 50000, '2025-11-25'),
(40, 50000, 30000, '2025-11-25'),
(41, 50000, 50000, '2025-11-25'),
(42, 50000, 25000, '2025-11-25'),
(43, 50000, 50000, '2025-11-25'),
(44, 50000, 40000, '2025-11-25'),
(45, 50000, 50000, '2025-11-25'),
(46, 50000, 35000, '2025-11-25'),
(47, 50000, 50000, '2025-11-25'),
(48, 50000, 45000, '2025-11-25'),
(49, 50000, 50000, '2025-11-25'),
(50, 50000, 20000, '2025-11-25'),
(51, 50000, 50000, '2025-11-25'),
(52, 50000, 30000, '2025-11-25'),
(53, 50000, 50000, '2025-11-25'),
(54, 50000, 40000, '2025-11-25'),
(55, 50000, 50000, '2025-11-25'),
(56, 50000, 35000, '2025-11-25'),
(57, 50000, 50000, '2025-11-25'),
(58, 50000, 45000, '2025-11-25'),
(59, 50000, 50000, '2025-11-25'),
(60, 50000, 30000, '2025-11-25'),
(61, 50000, 50000, '2025-11-25'),
(62, 50000, 25000, '2025-11-25'),
(63, 50000, 50000, '2025-11-25'),
(64, 50000, 40000, '2025-11-25'),
(65, 50000, 50000, '2025-11-25'),
(66, 50000, 35000, '2025-11-25'),
(67, 50000, 50000, '2025-11-25'),
(68, 50000, 45000, '2025-11-25'),
(69, 50000, 50000, '2025-11-25'),
(70, 50000, 30000, '2025-11-25'),
(71, 50000, 50000, '2025-11-25'),
(72, 50000, 25000, '2025-11-25'),
(73, 50000, 50000, '2025-11-25'),
(74, 50000, 40000, '2025-11-25'),
(75, 50000, 50000, '2025-11-25'),
(76, 50000, 35000, '2025-11-25'),
(77, 50000, 50000, '2025-11-25'),
(78, 50000, 45000, '2025-11-25'),
(79, 50000, 50000, '2025-11-25'),
(80, 50000, 30000, '2025-11-25'),
(81, 50000, 50000, '2025-11-25'),
(82, 50000, 25000, '2025-11-25'),
(83, 50000, 50000, '2025-11-25'),
(84, 50000, 40000, '2025-11-25'),
(85, 50000, 50000, '2025-11-25'),
(86, 50000, 35000, '2025-11-25'),
(87, 50000, 50000, '2025-11-25'),
(88, 50000, 45000, '2025-11-25'),
(89, 50000, 50000, '2025-11-25'),
(90, 50000, 30000, '2025-11-25'),
(91, 50000, 50000, '2025-11-25'),
(92, 50000, 25000, '2025-11-25'),
(93, 50000, 50000, '2025-11-25'),
(94, 50000, 40000, '2025-11-25'),
(95, 50000, 50000, '2025-11-25'),
(96, 50000, 35000, '2025-11-25'),
(97, 50000, 50000, '2025-11-25'),
(98, 50000, 45000, '2025-11-25'),
(99, 50000, 50000, '2025-11-25'),
(100, 50000, 30000, '2025-11-25');


-- 1️⃣ View all branches
SELECT * FROM branches;

-- 2️⃣ View all departments
SELECT * FROM department;

-- 3️⃣ View all employees
SELECT * FROM employee;

-- 4️⃣ View all classes
SELECT * FROM classes;

-- 5️⃣ View all teachers
SELECT * FROM teachers;

-- 6️⃣ View all students
SELECT * FROM students;

-- 7️⃣ View all fees
SELECT * FROM fees;

-- 8️⃣ View teacher-class assignments
SELECT * FROM teacher_class;
