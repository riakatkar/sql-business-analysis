INSERT INTO customers VALUES
(1,'Amit Sharma','Mumbai','2023-01-10'),
(2,'Riya Patel','Ahmedabad','2023-02-05'),
(3,'Rahul Verma','Delhi','2023-03-12'),
(4,'Sneha Iyer','Bangalore','2023-03-18'),
(5,'Kunal Mehta','Pune','2023-04-01');

INSERT INTO orders VALUES
(101,1,'2023-04-05',4500,'Completed'),
(102,1,'2023-05-10',3200,'Completed'),
(103,2,'2023-05-15',2800,'Cancelled'),
(104,3,'2023-06-01',5100,'Completed'),
(105,4,'2023-06-10',6000,'Completed'),
(106,5,'2023-06-18',1500,'Completed');

INSERT INTO payments VALUES
(1001,101,'2023-04-06',4500,'Success'),
(1002,102,'2023-05-11',3200,'Success'),
(1003,103,'2023-05-16',2800,'Failed'),
(1004,104,'2023-06-02',5100,'Success'),
(1005,105,'2023-06-11',6000,'Success'),
(1006,106,'2023-06-19',1500,'Success');