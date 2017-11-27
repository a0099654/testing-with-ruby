require 'rails_helper'

RSpec.describe Achievement, type: :model do
  describe 'validation' do
    it 'requires title' do
      achievement = Achievement.new(title: '')
      expect(achievement.valid?).to be_falsy
    end

    it 'requires title to be unique for one user' do
      user = FactoryBot.create(:user)
      first_achievement  = FactoryBot.create(:public_achievement, title: 'First Achievement', user: user)
      new_achievement =  Achievement.new(title:  'First Achievement', user: user)
      expect(new_achievement.valid?).to be_falsy
    end

  end
end
