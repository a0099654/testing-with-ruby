FactoryBot.define do
  factory :achievement do
    title "Title"
    description "Description"
    privacy Achievement.privacies[:private_acccess]
    featured false
    cover_image "some_file.png"
  end
end
