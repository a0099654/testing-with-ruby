require 'rails_helper'

RSpec.describe Achievement, type: :model do
  describe 'validation' do
    it 'requires title' do
      achievement = Achievement.new(title: '')
      achievement.valid?
      expect(achievement.errors[:title]).to include("can't be blank")
      expect(achievement.errors[:title]).not_to be_empty
      expect(achievement.valid?).to be_falsy
    end
  end
end
