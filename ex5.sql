-- 1. Tạo bảng Lớp học trước (Bảng cha)
CREATE TABLE classes (
    ma_lop VARCHAR(20) PRIMARY KEY,
    ten_lop VARCHAR(100) NOT NULL,
    nam_hoc VARCHAR(15) NOT NULL
);

-- 2. Tạo bảng Sinh viên sau (Bảng con, chứa khóa ngoại liên kết)
CREATE TABLE students (
    ma_sinh_vien VARCHAR(20) PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE,
    gioi_tinh VARCHAR(10),
    ma_lop VARCHAR(20),
    CONSTRAINT fk_sinhvien_lop FOREIGN KEY (ma_lop) REFERENCES classes(ma_lop)
);
