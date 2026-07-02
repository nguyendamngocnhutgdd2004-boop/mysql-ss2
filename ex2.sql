-- 1. Chọn cơ sở dữ liệu để làm việc (thay thế bằng DB của bạn nếu cần)
CREATE DATABASE IF NOT EXISTS quan_ly_ban_hang;
USE quan_ly_ban_hang;

-- 2. Xóa bảng cũ nếu tồn tại
DROP TABLE IF EXISTS products;

-- 3. Tạo bảng products mới
CREATE TABLE products (
    ma_san_pham VARCHAR(20) PRIMARY KEY,
    ten_san_pham VARCHAR(150) NOT NULL,
    gia_ban DECIMAL(15, 2) NOT NULL,
    so_luong_ton_kho INT DEFAULT 0
);

-- 4. Kiểm tra cấu trúc bảng vừa tạo
DESCRIBE products;
