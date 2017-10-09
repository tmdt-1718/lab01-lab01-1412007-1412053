User.delete_all
Article.delete_all
Comment.delete_all
Album.delete_all
(1..10).each do |user_num|
  user = User.create!(name: Faker::Name.name, email:'nguyenhuyenquychau@gmail.com', password: '123')

  (1..10).each do |article_num|
    article = user.articles.create!(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(10))

    (1..10).each do |comment_count|
      article.comments.create!(body: Faker::Lorem.paragraph, user_id: user.id)
    end
  end
end

# Album.create!(title: 'Album1', cover: 'https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/flip.jpg')
# Album.create!('Album1a', 'hinhcover1', 1, 1)
# Album.create!(title: 'Album2', cover: 'https://3.bp.blogspot.com/-W__wiaHUjwI/Vt3Grd8df0I/AAAAAAAAA78/7xqUNj8ujtY/s1600/image02.png')