# web-group2
Xây dựng ứng dụng web Tuyển dụng nhân sự

A. Giới thiệu Ngày nay nhu cầu việc làm ngày càng lớn, tuy nhiên việc các đơn vị tuyển dụng việc làm cũng như các bên có nhu cầu việc làm lại gặp không ít khó khăn trong việc tiếp cận với nhau. Nắm bắt được xu hướng trên, ứng dụng Website Tuyển dụng nhân sự với mục tiêu hướng đến sự đơn giản, tiện dụng, dễ cài đặt và thao tác cho người sử dụng. Đồng thời nhấn mạnh tính hiện đại, tinh tế trong việc trải nghiệm người dùng, trên hết là những tính năng cần thiết nhất của công việc quản lý. Giúp bên tìm việc và bên tuyển dụng dễ dàng tiếp cận với nhau giúp giải phóng một lượng lớn lao động cũng như giúp các đơn vị tuyển dụng có được một lực lượng lao động chất lượng B. Các trang web tham khảo:
+1.Các trang web trong nước:
2.IT Tìm việc: https://itviec.com/
3.TopDev: https://topdev.vn/
4.TopCV: https://www.topcv.vn/co-viec-sieu-toc
5.Các trang web nước ngoài:
6.LinkedIn: https://www.linkedin.com/
7.Indeed: https://www.indeed.com/recruitment
8.Glassdoor: https://www.glassdoor.com/member/home/index.htm
9.Snagajob: https://www.snagajob.com/ C. Yêu cầu
10.Hiển thị thông tin đối tượng một cách trực quan.
11.Phân quyền đăng nhập:
12.Bên tuyển dụng
13.Bên cần việc làm
14.Các module chính: 
15.Module đối tác: Module này sẽ giúp đăng tải thông tin của bên cần tuyển ứng viên và các nội dung liên quan
16.Phân loại việc làm (chuyên về mảng IT) • Theo ngôn ngữ lập trình: Java, Python, .Net, F#, ….. • Theo tầng: UI/UX, DB,
• Theo chuyên môn: Web Developer, Windows Application Developer... • Theo mức lương. • Xếp loại (các công việc hot, được ứng tuyển nhiều,....) 
17.Module việc làm: Hiển thị danh sách các công việc đã đăng.
18.Module tìm kiếm: Giúp các ứng viên và nhà tuyển dụng tìm kiếm thông tin trên web bằng các từ khóa.
19.Module liên hệ trực tuyến: Giúp người dùng có thể dễ dàng gửi yêu cầu và CV của mình đến bên công ty mà mình muốn ứng tuyển.
20.Module dành cho bên cần ứng viên. Gồm các chức năng như: đăng ký thành viên tuyển dụng, Chỉnh sửa thông tin đăng tuyển, quản lý hồ sơ.
21.Module dành cho ứng viên tìm việc: Cần có các chức năng như: đăng ký thành viên, chỉnh sửa hồ sơ, xem hồ sơ...
22.Hướng phát triển:
23.Cải tiến, phát triển các chức năng hiện tại đồng thời bổ sung thêm các module:
24.Module ngôn ngữ: (Nâng cao)Tích hợp nhiều loại ngôn ngữ nhằm tiếp cận được với nhiều ứng viên.
25.Module tin tức: (Nâng cao) Cho phép đăng tải các tin tức, sự kiện hoặc thông tin về cẩm nang làm các hoạt động, các lĩnh vực tìm kiếm công việc.
26.Module quảng cáo (Nâng cao)
27.Dịch vụ Mail (Nâng cao)
28.Contact us (Nâng cao)
29.Quản lý các đối tượng như: ứng viên, nhà tuyển dụng, cv, công việc…. o Xem o Thêm o Cập nhật o Xóa 
30.Hoạt động tính toán.
31.Giao diện: Có tính thân thiện với người dùng, bắt mắt.
32.Dễ dàng cài đặt.
33.Có tính ứng dụng với thực tế.

Database
  <ol>
<li>•Account (accountID, username, password, email, typeUser)</li>
<li>•UserEmployee (id, accountID, fullName, avatar, phone, address, birthday)</li>
<li>•UserEmployer (id, accountID, companyName, avatar, phone, address)</li>
<li>•Post (id, accountID, title, content, dateStart, dateEnd, categoryID, url)
•Category (id, name, description)
•Apply (id,postID, accountID,date)
  </ol>
