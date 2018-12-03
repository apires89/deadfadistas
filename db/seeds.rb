
puts "Cleaning up database..."
DeadPlayer.destroy_all

PHOTO_URLS = [
  "https://static01.nyt.com/images/2011/03/27/arts/FADO-2/FADO-2-popup.jpg",
  "https://previews.123rf.com/images/membio/membio1404/membio140400125/30469457-view-of-a-young-beautiful-singer-and-performer-woman-of-traditional-portuguese-fado-music-.jpg",
  "https://i.pinimg.com/originals/82/82/ba/8282ba301f4f1330defc49b5d9741034.jpg"
]

10.times do
  first_name, last_name = Faker::FunnyName.two_word_name.split
  DeadPlayer.create!(
  first_name: first_name,
  last_name: last_name,
  fame: DeadPlayer::FAME_TYPES.sample,
  photo_url: PHOTO_URLS.sample
  )
end
puts "Created #{DeadPlayer.count} DeadPlayers"
