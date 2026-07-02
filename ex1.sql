-- 1. Tạo cơ sở dữ liệu quản lý sinh viên
CREATE DATABASE IF NOT EXISTS quan_ly_sinh_vien;

-- 2. Chọn cơ sở dữ liệu này để làm việc
USE quan_ly_sinh_vien;

-- 3. Xóa bảng cũ nếu đã tồn tại trước đó để tránh lỗi
DROP TABLE IF EXISTS students;

-- 4. Tạo bảng sinh viên mới với đầy đủ cấu trúc
CREATE TABLE students (
    ma_sinh_vien VARCHAR(20) PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE,
    gioi_tinh VARCHAR(10)
);

-- 5. Lệnh kiểm tra xem bảng đã được tạo thành công chưa
DESCRIBE students;
