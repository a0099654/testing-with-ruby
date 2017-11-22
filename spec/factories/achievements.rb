FactoryBot.define do
  factory :achievement do
    title "Title"
    description "Description"
    privacy Achievement.privacies[:private_acccess]
    featured false
    cover_image "MyString"
  end
end
