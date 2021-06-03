User.seed(:id,
          { id: 2, name: 'hoge', email: 'hoge@example.com' },
          { id: 3, name: 'fuga', email: 'fuga@example.com' },
)

User.all.each do |user|
  profile = Profile.seed(user: user, address: '住所だよ').first
  Skill.seed(
    { profile: profile, name: 'Ruby' },
    { profile: profile, name: 'Javascript' },
    { profile: profile, name: 'Python' }
  )
  Portfolio.seed(
    { user: user, name: 'ポートフォリオ1', url: 'url1' },
    { user: user, name: 'ポートフォリオ2', url: 'url2' },
    { user: user, name: 'ポートフォリオ3', url: 'url3' }
  )
  books = Book.seed(
    { title: "#{user.name}本1" },
    { title: "#{user.name}本2" },
    { title: "#{user.name}本3" }
  )

  books.each do |book|
    UserBook.seed(user: user, book: book)
  end
end
