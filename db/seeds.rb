User.delete_all
Article.delete_all
Comment.delete_all
Album.delete_all
Photo.delete_all

# (1..10).each do |user_num|
#   user = User.create!(name: Faker::Name.name, email:'nguyenhuyenquychau@gmail.com', password: '123')

#   (1..10).each do |article_num|
#     article = user.articles.create!(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(10))

#     (1..10).each do |comment_count|
#       article.comments.create!(body: Faker::Lorem.paragraph, user_id: user.id)
#     end
#   end
# end

# Album.create!(title: 'Album1', cover: 'https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/flip.jpg')
# Album.create!('Album1a', 'hinhcover1', 1, 1)
# Album.create!(title: 'Album2', cover: 'https://3.bp.blogspot.com/-W__wiaHUjwI/Vt3Grd8df0I/AAAAAAAAA78/7xqUNj8ujtY/s1600/image02.png')
# 

user1 = User.create!(name: 'Nguyen Huyen Quy Chau', email:'nguyenhuyenquychau@gmail.com', password: '123')
user2 = User.create!(name: 'Le My Anh', email:'anhle0196@gmail.com', password: '123')
user3 = User.create!(name: '1412012', email:'1412012@gmail.com', password: '123')
user4 = User.create!(name: '1412169', email:'1412169@gmail.com', password: '123')

article1 = user1.articles.create!(title: 'Titanic', body: 'Titanic là một bộ phim thảm hoạ lãng mạn có yếu tố lịch sử của Mỹ phát hành năm 1997, do James Cameron làm đạo diễn, viết kịch bản, đồng sản xuất, đồng biên tập và hỗ trợ tài chính một phần. Phim lấy ý tưởng dựa trên vụ đắm tàu RMS Titanic nổi tiếng trong lịch sử vào năm 1912, với sự tham gia của các diễn viên chính Leonardo DiCaprio và Kate Winslet trong vai hai con người đến từ hai tầng lớp khác nhau trong xã hội, họ đem lòng yêu nhau trên chuyến ra khơi đầu tiên của con tàu xấu số. Cảm hứng của Cameron cho bộ phim đến từ sự say mê của ông với những xác tàu đắm (chính ông đã khẳng định như vậy); ông muốn truyền tải một thông điệp tình cảm từ thảm hoạ và thấy rằng một câu chuyện tình lãng mạn kết thúc bằng sự ra đi của một trong hai người sẽ giúp ông làm được điều này. Quá trình sản xuất phim bắt đầu từ năm 1995, khi Cameron bắt đầu quay cảnh xác chiếc Titanic đắm nằm dưới đáy đại dương. Các phân cảnh hiện tại được quay trên tàu Akademik Mstislav Keldysh, và đây cũng là nơi Cameron sử dụng làm chỗ ở và căn cứ cho đoàn làm phim khi quay cảnh xác tàu. Một con tàu Titanic mới cũng đã được dựng lại ở Playas de Rosarito thuộc Baja California; các mô hình thu nhỏ và công nghệ mô phỏng hình ảnh trên máy tính được sử dụng để tái tạo cảnh tàu chìm. Kinh phí thực hiện bộ phim do Paramount Pictures và 20th Century Fox cung cấp, và vào thời điểm đó, đây là bộ phim có kinh phí cao nhất trong lịch sử, với tổng mức đầu tư ước tính khoảng 200 triệu đô la Mỹ. Phát hành vào ngày 19 tháng 12 năm 1997, bộ phim đã giành được thành công vang dội cả về doanh thu và chuyên môn. Trong số mười bốn giải Oscar được đề cử, phim giành chiến thắng ở mười một hạng mục, trong đó có giải Phim hay nhất và Đạo diễn xuất sắc nhất, bằng với kỷ lục của Ben Hur (1959) về phim giành được nhiều giải Oscar nhất. Với doanh thu trên 1,84 tỷ đô la Mỹ trong lần phát hành đầu tiên, phim cũng trở thành bộ phim đầu tiên vượt qua mốc doanh thu 1 tỷ đô la Mỹ. Titanic giữ ngôi vị bộ phim có doanh thu cao nhất mọi thời đại, cho tới khi một bộ phim khác cũng của Cameron ra mắt năm 2009, Avatar vượt qua lợi nhuận của nó vào năm 2010. Một phiên bản 3D của bộ phim, phát hành ngày 4 tháng 4 năm 2012 (thường gọi là Titanic 3D) kỷ niệm một thế kỷ kể từ vụ đắm tàu, mang về thêm 343,6 triệu đô la Mỹ toàn cầu, đưa doanh thu trên toàn thế giới của Titanic lên mốc 2,18 tỷ đô la Mỹ. Đây là bộ phim thứ hai vượt mốc 2 tỷ đô la Mỹ trên toàn thế giới sau Avatar.',
	image: 'Anh-bia-fb-y-nghia-Me-1.jpg', sumview: 1)

article1.comments.create!(body: Faker::Lorem.paragraph, user_id: user1.id)
article1.comments.create!(body: Faker::Lorem.paragraph, user_id: user3.id)
article1.comments.create!(body: Faker::Lorem.paragraph, user_id: user4.id)
article1.comments.create!(body: Faker::Lorem.paragraph, user_id: user1.id)


article2 = user2.articles.create!(title: 'Công nghệ thông tin', body: 'Công nghệ Thông tin, viết tắt CNTT, (tiếng Anh: Information Technology hay là IT) là một nhánh ngành kỹ thuật sử dụng máy tính và phần mềm máy tính để chuyển đổi, lưu trữ, bảo vệ, xử lý, truyền tải và thu thập thông tin. Ở Việt Nam, khái niệm Công nghệ Thông tin được hiểu và định nghĩa trong nghị quyết Chính phủ 49/CP ký ngày 04/08/1993: "Công nghệ thông tin là tập hợp các phương pháp khoa học, các phương tiện và công cụ kĩ thuật hiện đại - chủ yếu là kĩ thuật máy tính và viễn thông - nhằm tổ chức khai thác và sử dụng có hiệu quả các nguồn tài nguyên thông tin rất phong phú và tiềm năng trong mọi lĩnh vực hoạt động của con người và xã hội". Thuật ngữ "Công nghệ Thông tin" xuất hiện lần đầu vào năm 1958 trong bài viết xuất bản tại tạp chí Harvard Business Review. Hai tác giả của bài viết, Leavitt và Whisler đã bình luận: "Công nghệ mới chưa thiết lập một tên riêng. Chúng ta sẽ gọi là công nghệ thông tin (Information Technology - IT)." Các lĩnh vực chính của công nghệ thông tin bao gồm quá trình tiếp thu, xử lý, lưu trữ và phổ biến hóa âm thanh, phim ảnh, văn bản và thông tin số bởi các vi điện tử dựa trên sự kết hợp giữa máy tính và truyền thông. Một vài lĩnh vực hiện đại và nổi bật của công nghệ thông tin như: các tiêu chuẩn Web thế hệ tiếp theo, sinh tin, điện toán đám mây, hệ thống thông tin toàn cầu, tri thức quy mô lớn và nhiều lĩnh vực khác. Các nghiên cứu phát triển chủ yếu trong ngành khoa học máy tính.',
	sumview: 3)

article2.comments.create!(body: Faker::Lorem.paragraph, user_id: user2.id)
article2.comments.create!(body: Faker::Lorem.paragraph, user_id: user3.id)
article2.comments.create!(body: Faker::Lorem.paragraph, user_id: user2.id)