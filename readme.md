**Quản lý điểm sinh viên**

  *Mô tả dự án*
  
    Nhận thấy sự phát triển của công nghệ thông tin ngày càng mạnh mẽ nhất là trong lĩnh vực giáo dục. Việc tối ưu hóa từ các thao tác thủ công sang sử dụng công nghệ là một lợi thế của các trường nếu áp dụng được sẽ góp phần nâng cao hiệu  suất giảng dạy cũng như chất lượng đào tạo đầu ra. 
    
    Dự án "Quản lý điểm thi cho sinh viên" được phát triển nhằm tối ưu hoá quy trình nhập và quản lý điểm của sinh viên trong các trường học. Ứng dụng sử dụng Windows Forms C# và SQL Server như là công nghệ cốt lõi.
    
  *Tính năng chính*
  
    1. Sinh viên:
    
      - Đăng nhập hệ thống.
      
      - Xem các học kỳ.
      
      - Xem điểm các môn học.
      
    2. Giảng viên:
    
      - Đăng nhập hệ thống.
      
      - Nhập điểm cho sinh viên theo môn học mà giảng viên đảm nhận.
      
      - Xem danh sách sinh viên đã nhập điểm.
      
    3. Quản trị viên:
    
      - Quản lý tài khoản người dùng (sinh viên, giảng viên).
      
      - Thêm tài khoản sinh viên, giảng viên.
      
      - Thêm môn học.
      
      - Thêm học kỳ.
      
      - Xóa điểm sinh viên.
      
      - Xóa tài khoản giảng viên.
      
  *Công nghệ sử dụng*
  
    - Ngôn ngữ: C#, SQL
    
    - Môi trường: Windows Forms
    
    - Cơ sở dữ liệu: SQL Server
    
  *Hướng dẫn cài đặt*
  
    1. Bước 1: Tải các phần mềm để tạo dự án: https://github.com/holyminhlu/csn-da22ttb-holyminhlu-quanlydiemthi-csharp/tree/main/H%C3%AA%CC%A3%20th%C3%B4%CC%81ng%20qua%CC%89n%20ly%CC%81%20%C4%91i%C3%AA%CC%89m%20thi%20cho%20sinh%20vi%C3%AAn/setup
    
    2. Bước 2: Mở project bằng Visual Studio.
    
    3. Bước 3: Thiết lập chuỗi kết nối SQL Server trong file App.config.
    
    4. Bước 4: Chạy script SQL để tạo cơ sở dữ liệu (file Database/Init.sql).
    
    5. Bước 5: Build và chạy project.
    
  *Lộ trình phát triển*
  
    1. Giai đoạn 1: Cơ bản
    
      - Học tập, nghiên cứu các câu lệnh, các cấu trúc lập trình với ngôn ngữ C# trên công cụ Visual Studio, cách tạo ra giao diện cho người dùng, xây dựng các chức năng cho phép tương tác với hệ thống. Nghiên cứu về cơ sở dữ liệu SQL Server thông qua các tài liệu, video hướng dẫn. 
      
      - Tìm hiểu cách kết nối cơ sở dữ liệu với các trang giao diện người dùng từ đó tiến hành xây dựng nên cơ sở dữ liệu lưu trữ các thông tin.
      
      - Xác định các thông tin của hệ thống cần lưu trữ sau đó tiến  hành thiết kế cơ sở dữ liệu bao gồm các bảng, các thực thể có trong bảng, các mối quan hệ giữa các bảng và thực hiện các câu truy vấn cần thiết.
      
    2. Giai đoạn 2: Chức năng mở rộng
    
       2.1 Thiết kế các yêu cầu chức năng cho hệ thống:
       
        2.1.1 Đối với sinh viên
        
          -	Chức năng xem các học kỳ, các môn học đã học và điểm số tương ứng của môn học đó khi đăng nhập đúng với tài khoản sinh viên.
          
          -	Chức năng kết xuất: xuất các dữ liệu điểm mà sinh viên có để tạo các báo cáo có hỗ trợ biểu đồ cho sinh viên dễ dàng đánh giá kết quả học tập của mình để có hướng cải thiện.
          
        2.1.2 Đối với giảng viên
        
          -	Sau khi đăng nhập hệ thống giảng viên có thể nhập điểm cho sinh viên theo môn học của giảng viên đó.
          
          -	Xem danh sách điểm các sinh viên mà giảng viên đã nhập.
          
        2.1.3 Đối với quản trị viên hệ thống
        
          -	Sau khi đăng nhập hệ thống quản trị viên có quyền quản lý các tài khoản của sinh viên và giảng viên.
          
          -	Có quyền thêm các học kỳ mới, môn học mới.
          
          -	Cấp tài khoản mới cho sinh viên, giảng viên.
          
       2.1 Thiết kế các yêu cầu phi chức năng cho hệ thống
       
        -	Thiết kế hệ thống với các bố cục được chia hợp lý, màu sắc hài hòa, hình ảnh sinh động.
        
        -	Tốc độ phản hồi đối với các thao tác người dùng nhanh chóng, cung cấp trải nghiệm mượt mà, kịp thời.
        
        -	Kết quả truy xuất các dữ liệu nhanh chóng, chính xác theo yêu cầu.
        
        -	Khả năng mở rộng để tăng phạm vi lưu trữ và lượng truy cập lớn.
        
        -	Hệ thống có phân quyền truy cập đảm bảo tính bảo mật các dữ liệu thông tin người dùng.4
        
       2.3 Thiết kế cơ sở dữ liệu cho hệ thống
       
        - Xác định các thông tin cần lưu trữ.
        
        - Xác định quan hệ giữa các bảng, thiết lập ràng buộc.
        
        - Kiểm tra logic và hoàn thiện cơ sở dữ liệu.
        
    3. Giai đoạn 3: Kiểm tra và vận hành hệ thống
    
        - Tiến hành kết nối với cơ sở dữ liệu.
        
        - Kiểm tra sữa lỗi các chức năng cơ bản.
        
        - Kiểm tra sữa lỗi các chức năng nâng cao
        
        - Đổ dữ liệu mẫu và vận hành hệ thống.
        
        - Hoàn thành các bước cuối cùng để hoàn thiện sản phẩm.
        
  *Hỗ trợ*
  
    Nếu bạn có bất kỳ thắc mắc hoặc gặp vấn đề trong quá trình cài đặt/sử dụng, vui lòng liên hệ qua:
    
      Email: 110122231@st.tvu.edu.vn
      
      Sđt: 0983149203
