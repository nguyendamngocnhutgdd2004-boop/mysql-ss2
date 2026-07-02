CREATE TABLE students_constraint (
    ma_sinh_vien VARCHAR(20) PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    tuoi INT,
    CONSTRAINT chk_tuoi CHECK (tuoi >= 18)
);
