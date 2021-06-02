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
  profile = Profile.seed(user: user, address: '住所だよ').first
  Skill.seed(
    { profile: profile, name: 'Ruby' },
    { profile: profile, name: 'Javascript' }
  )
  Portfolio.seed(
    { user: user, name: 'ポートフォリオ1', url: 'url1' },
    { user: user, name: 'ポートフォリオ2', url: 'url2' }
  )

  books.each do |book|
    UserBook.seed(user: user, book: book)
  end
end
