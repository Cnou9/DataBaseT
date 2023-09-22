use Person;

-- 1 Lấy danh sách các quốc gia duy nhất mà các người trong bảng đến từ đó.
SELECT DISTINCT country
FROM Person;

-- 2 Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần.
SELECT *
FROM Person
ORDER BY fullname ASC;

-- 3 Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần.
SELECT *
FROM Person
ORDER BY job DESC;

-- 4 Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm.
SELECT DISTINCT job
FROM Person;

-- 5 Lấy tổng số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần.
SELECT country, COUNT(*) as total_people
FROM Person
GROUP BY country
ORDER BY total_people DESC;

-- 6 Tính tổng lương (salary) của tất cả người trong bảng.
SELECT SUM(salary) as total_salary
FROM Person;

-- 7 Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần.
SELECT job, AVG(salary) as average_salary
FROM Person
GROUP BY job
ORDER BY average_salary ASC;

-- 8 Lấy ra người có lương (salary) lớn hơn 5000 và ngày sinh (birthday) nằm trong khoảng ‘1990-01-01’ đến ‘1995-12-31’.
SELECT *
FROM Person
WHERE salary > 5000 AND birthday BETWEEN '1990-01-01' AND '1995-12-31';

-- 9 Lấy ra người có lương (salary) lớn hơn 6000 và nghề nghiệp (job) là ‘Developer’ hoặc ‘Engineer’.
SELECT *
FROM Person
WHERE salary > 6000 AND (job = 'Developer' OR job = 'Engineer');

-- 10 Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 3 người làm.
SELECT job
FROM Person
GROUP BY job
HAVING COUNT(*) >= 3;

-- 11 Lấy ra người nam (gender = ‘Male’) có lương (salary) cao nhất.
SELECT *
FROM Person
WHERE gender = 'Male'
ORDER BY salary DESC
LIMIT 1;

-- 12 Lấy ra người nữ (gender = ‘Female’) có lương (salary) thấp nhất.
SELECT *
FROM Person
WHERE gender = 'Female'
ORDER BY salary ASC
LIMIT 1;

-- 13 Lấy danh sách người nam và người nữ (không trùng lặp) theo thứ tự tên đầy đủ tăng dần.
SELECT DISTINCT fullname, gender
FROM Person
ORDER BY fullname ASC;


-- 14 Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự tháng tăng dần.
SELECT EXTRACT(MONTH FROM birthday) as birth_month, COUNT(*) as total_people
FROM Person
GROUP BY birth_month
ORDER BY birth_month ASC;
