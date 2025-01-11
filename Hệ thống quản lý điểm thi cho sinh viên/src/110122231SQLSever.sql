CREATE DATABASE CoSoDuLieuDiem;
GO

USE CoSoDuLieuDiem;
GO

-- Tạo bảng SinhVien
CREATE TABLE SinhVien (
    MaSinhVien INT PRIMARY KEY,  -- Khóa chính
    TenSinhVien NVARCHAR(100) NOT NULL,
    MatKhau NVARCHAR(255) NOT NULL
);
GO

-- Tạo bảng HocKy
CREATE TABLE HocKy (
    MaHocKy INT PRIMARY KEY,  -- Khóa chính
    TenHocKy NVARCHAR(255) NOT NULL
);
GO

-- Tạo bảng MonHoc
CREATE TABLE MonHoc (
    MaMonHoc INT PRIMARY KEY,  -- Khóa chính
    TenMonHoc NVARCHAR(255) NOT NULL
);
GO

-- Tạo bảng GiangVien
CREATE TABLE GiangVien (
    MaGiangVien INT PRIMARY KEY,  -- Khóa chính
    MaMonHoc INT NOT NULL,  -- Khóa ngoại
    TenGiangVien NVARCHAR(100) NOT NULL,
    MatKhau NVARCHAR(255) NOT NULL,
    CONSTRAINT FK_GiangVien_MonHoc FOREIGN KEY (MaMonHoc) REFERENCES MonHoc(MaMonHoc)
);
GO

-- Tạo bảng QuanTri
CREATE TABLE QuanTri (
    MaQuanTri INT PRIMARY KEY,  -- Khóa chính
    MaSinhVien INT NOT NULL,  -- Khóa ngoại
    MaGiangVien INT NOT NULL, -- Khóa ngoại
    MatKhau NVARCHAR(255) NOT NULL,
    CONSTRAINT FK_QuanTri_SinhVien FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien),
    CONSTRAINT FK_QuanTri_GiangVien FOREIGN KEY (MaGiangVien) REFERENCES GiangVien(MaGiangVien)
);
GO

-- Tạo bảng Diem
CREATE TABLE Diem (
    MaSinhVien INT NOT NULL,  -- Khóa ngoại
    MaGiangVien INT,          -- Khóa ngoại
    MaMonHoc INT NOT NULL,    -- Khóa ngoại
    MaHocKy INT NOT NULL,     -- Khóa ngoại
    DiemQuaTrinh1 FLOAT NOT NULL,
    DiemQuaTrinh2 FLOAT NOT NULL,
    DiemThi FLOAT NOT NULL,
    PRIMARY KEY (MaSinhVien, MaMonHoc, MaHocKy, MaGiangVien),  -- Khóa chính
    CONSTRAINT FK_Diem_SinhVien FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien),
    CONSTRAINT FK_Diem_GiangVien FOREIGN KEY (MaGiangVien) REFERENCES GiangVien(MaGiangVien),
    CONSTRAINT FK_Diem_MonHoc FOREIGN KEY (MaMonHoc) REFERENCES MonHoc(MaMonHoc),
    CONSTRAINT FK_Diem_HocKy FOREIGN KEY (MaHocKy) REFERENCES HocKy(MaHocKy)
);
GO


-- Sử dụng cơ sở dữ liệu
USE CoSoDuLieuDiem;
GO

-- Chèn dữ liệu mẫu vào bảng SinhVien
INSERT INTO SinhVien (MaSinhVien, TenSinhVien, MatKhau)
VALUES 
(101, N'Nguyễn Văn A', '123'),
(102, N'Lê Thị B', '123'),
(103, N'Trần Văn C', '123');
GO

-- Chèn dữ liệu mẫu vào bảng GiangVien
INSERT INTO GiangVien (MaGiangVien, MaMonHoc, TenGiangVien, MatKhau)
VALUES 
(1011,301, N'Phạm Văn D', '321'),
(1022,302, N'Ngô Thị E', '321');
GO

-- Chèn dữ liệu mẫu vào bảng QuanTri
INSERT INTO QuanTri (MaSinhVien, MaGiangVien, MaQuanTri, MatKhau)
VALUES 
(101, 1011, 1010, '999'),
(102, 1011, 2020, '999');
GO

-- Chèn dữ liệu mẫu vào bảng HocKy
INSERT INTO HocKy (MaHocKy, TenHocKy)
VALUES 
(12223, N'Học kỳ 1 - 2022-2023'),
(22223, N'Học kỳ 2 - 2022-2023');
GO

-- Chèn dữ liệu mẫu vào bảng MonHoc
INSERT INTO MonHoc ( MaMonHoc, TenMonHoc)
VALUES 
(301, N'Lập trình C#'),
(302, N'Cơ sở dữ liệu'),
(303, N'Phát triển web');
GO

-- Chèn dữ liệu mẫu vào bảng Diem
INSERT INTO Diem (MaSinhVien, MaGiangVien, MaMonHoc, MaHocKy, DiemQuaTrinh1, DiemQuaTrinh2, DiemThi)
VALUES 
(101, 1011, 301, 12223, 8.5, 7.5, 9.0),
(101, 1022, 302, 22223, 8.0, 7.0, 8.5),
(102, 1011, 301, 22223, 9.0, 8.5, 9.5),
(103, 1022, 303, 22223, 7.0, 6.5, 8.0);
GO

delete Diem
delete MonHoc
delete SinhVien
delete GiangVien
delete QuanTri
delete HocKy

drop table HocKy

select *from SinhVien
select *from Diem

select *from MonHoc
select *from HocKy

select *from GiangVien
select * from QuanTri