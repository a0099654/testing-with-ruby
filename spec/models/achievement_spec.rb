require 'rails_helper'

RSpec.describe Achievement, type: :model do
  describe 'validation' do

    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title).scoped_to(:user_id).with_message("you can't have two achievements with the same title") }
    # it { should validate_presence_of(:user) } user's presence supposed to be true and not false
    it { should belong_to(:user)}
  end

  it 'belongs to user' do
    achievement = Achievement.new(title: 'Some title', user: nil)
    expect(achievement.valid?).to be_truthy
  end

  it 'has a title' do
    achievement = Achievement.new(title: 'New achievement', user: FactoryBot.create(:user, email: 'test@test.com'))
    expect(achievement.test_title).to eq('New achievement by test@test.com')
  end
end
