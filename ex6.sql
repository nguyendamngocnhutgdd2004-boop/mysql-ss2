-- 1. Xóa bảng trung gian trước (nếu có) để tránh lỗi ràng buộc khóa ngoại
DROP TABLE IF EXISTS order_details;

-- 2. Xóa các bảng gốc cũ nếu đã tồn tại
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS orders;

-- 3. Tạo lại bảng Sản phẩm
CREATE TABLE products (
    ma_san_pham VARCHAR(20) PRIMARY KEY,
    ten_san_pham VARCHAR(150) NOT NULL,
    gia_ban DECIMAL(15, 2) NOT NULL
);

-- 4. Tạo lại bảng Đơn hàng
CREATE TABLE orders (
    ma_don_hang VARCHAR(20) PRIMARY KEY,
    ngay_dat_hang DATETIME DEFAULT CURRENT_TIMESTAMP,
    trang_thai VARCHAR(15) DEFAULT 'NEW',
    CONSTRAINT chk_trang_thai_dh CHECK (trang_thai IN ('NEW', 'PAID'))
);

-- 5. Tạo bảng Chi tiết đơn hàng (Bảng trung gian)
CREATE TABLE order_details (
    ma_don_hang VARCHAR(20),
    ma_san_pham VARCHAR(20),
    so_luong INT NOT NULL DEFAULT 1,
    PRIMARY KEY (ma_don_hang, ma_san_pham),
    CONSTRAINT fk_detail_order FOREIGN KEY (ma_don_hang) REFERENCES orders(ma_don_hang),
    CONSTRAINT fk_detail_product FOREIGN KEY (ma_san_pham) REFERENCES products(ma_san_pham),
    CONSTRAINT chk_so_luong_mua CHECK (so_luong > 0)
);
