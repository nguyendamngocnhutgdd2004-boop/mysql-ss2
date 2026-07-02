CREATE TABLE users (
    ma_nguoi_dung VARCHAR(20) PRIMARY KEY,
    ten_dang_nhap VARCHAR(50) NOT NULL UNIQUE,
    mat_khau VARCHAR(255) NOT NULL,
    trang_thai VARCHAR(15) DEFAULT 'ACTIVE',
    CONSTRAINT chk_trang_thai CHECK (trang_thai IN ('ACTIVE', 'INACTIVE'))
);
