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

Hoge.seed(:id,
          { id: 1, idx_num: 1, num: 1, name: 'hoge1' },
          { id: 3, idx_num: 3, num: 3, name: 'hoge3' },
          { id: 5, idx_num: 5, num: 5, name: 'hoge5' },
          { id: 7, idx_num: 7, num: 7, name: 'hoge7' },
)

Fuga.seed(:id,
          { id: 1, hoge_id: 1, idx_num: 1, num: 1, name: 'fuga1' },
          { id: 3, hoge_id: 3, idx_num: 3, num: 3, name: 'fuga3' },
          { id: 5, hoge_id: 5, idx_num: 5, num: 5, name: 'fuga5' },
          { id: 7, hoge_id: 7, idx_num: 7, num: 7, name: 'fuga7' },
)

Piyo.seed(:id,
  { id: 3, idx_num: 40, num: 50, name: 'piyo3' },
  { id: 5, idx_num: 30, num: 60, name: 'piyo5' },
  { id: 8, idx_num: 30, num: 70, name: 'piyo8' },
  { id: 9, idx_num: 10, num: 80, name: 'piyo9' },
)
