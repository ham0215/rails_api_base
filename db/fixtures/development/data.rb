User.seed(:id,
          { id: 2, name: 'hoge', email: 'hoge@example.com' },
          { id: 3, name: 'fuga', email: 'fuga@example.com' },
)

Book.seed(:id,
          { id: 2, title: '本2' },
          { id: 3, title: '本3' },
)

books = Book.all
User.all.each do |user|
  books.each do |book|
    UserBook.seed(user: user, book: book)
  end
end
