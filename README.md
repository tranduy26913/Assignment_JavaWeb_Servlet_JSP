# Xây dựng ứng dụng web Tuyển dụng nhân sự
A.	Giới thiệu
Ngày nay nhu cầu việc làm ngày càng lớn, tuy nhiên việc các đơn vị tuyển dụng việc làm cũng như các bên có nhu cầu việc làm lại gặp không ít khó khăn trong việc tiếp cận với nhau.
Nắm bắt được xu hướng trên, ứng dụng Website Tuyển dụng nhân sự  với mục tiêu hướng đến sự đơn giản, tiện dụng, dễ cài đặt và thao tác cho người sử dụng. Đồng thời nhấn mạnh tính hiện đại, tinh tế trong việc trải nghiệm người dùng, trên hết là những tính năng cần thiết nhất của công việc quản lý. Giúp bên tìm việc và bên tuyển dụng dễ dàng tiếp cận với nhau giúp giải phóng một lượng lớn lao động cũng như giúp các đơn vị tuyển dụng có được một lực lượng lao động chất lượng
B.	Các trang web tham khảo:
1.	Các trang web trong nước:
- IT Tìm việc: https://itviec.com/
- TopDev: https://topdev.vn/
- TopCV: https://www.topcv.vn/co-viec-sieu-toc
2.	Các trang web nước ngoài:
- LinkedIn: https://www.linkedin.com/
- Indeed: https://www.indeed.com/recruitment
- Glassdoor: https://www.glassdoor.com/member/home/index.htm
- Snagajob: https://www.snagajob.com/
C.	Yêu cầu
1.	Hiển thị thông tin đối tượng một cách trực quan.
2.	Phân quyền đăng nhập:
+ Bên tuyển dụng
+ Bên cần việc làm
3.	Các module chính: 
-	Module đối tác: Module này sẽ giúp đăng tải thông tin của bên cần tuyển ứng viên và các nội dung liên quan
-	Phân loại việc làm (chuyên về mảng IT)
•	Theo ngôn ngữ lập trình: Java, Python, .Net, F#, ….. 
•	Theo tầng: UI/UX, DB,  
•	Theo chuyên môn: Web Developer, Windows Application Developer...
•	Theo mức lương.
•	Xếp loại (các công việc hot, được ứng tuyển nhiều,....) 
-	Module việc làm: Hiển thị danh sách các công việc đã đăng.
- 	Module tìm kiếm: Giúp các ứng viên và nhà tuyển dụng tìm kiếm thông tin trên web bằng các từ khóa.
- 	Module liên hệ trực tuyến: Giúp người dùng có thể dễ dàng gửi yêu cầu và CV của mình đến bên công ty mà mình muốn ứng tuyển.
- 	Module dành cho bên cần ứng viên. Gồm các chức năng như: đăng ký thành viên tuyển dụng, Chỉnh sửa thông tin đăng tuyển, quản lý hồ sơ.
- 	Module dành cho ứng viên tìm việc: Cần có các chức năng như: đăng ký thành viên, chỉnh sửa hồ sơ, xem hồ sơ...
4.	Hướng phát triển:
- 	Cải tiến, phát triển các chức năng hiện tại đồng thời bổ sung thêm các module:
- 	Module ngôn ngữ: (Nâng cao)Tích hợp nhiều loại ngôn ngữ nhằm tiếp cận được với nhiều ứng viên.
- 	Module tin tức: (Nâng cao) Cho phép đăng tải các tin tức, sự kiện hoặc thông tin về cẩm nang làm các hoạt động, các lĩnh vực tìm kiếm công việc.
- 	Module quảng cáo (Nâng cao)
- 	Dịch vụ Mail (Nâng cao)
- 	Contact us (Nâng cao)
5.	Quản lý các đối tượng như: ứng viên, nhà tuyển dụng, cv, công việc….
o	Xem
o	Thêm
o	Cập nhật
o	Xóa 
6.	Hoạt động tính toán.
7.	Giao diện: Có tính thân thiện với người dùng, bắt mắt.
8.	Dễ dàng cài đặt.
9.	Có tính ứng dụng với thực tế.

# Database
- Account (accountID, username, password, email, typeUser)
- User (id, accountID, fullName, avatar, phone, address, birthday, follow)
- Post (id, accountID, title, content, dateStart, dateEnd, categoryID, url)
- Category (id, name, description)
- Apply (postID, accountID,date)
