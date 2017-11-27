require 'rails_helper'

RSpec.describe Achievement, type: :model do
  describe 'validation' do
    it 'requires title' do
      achievement = Achievement.new(title: '')
      expect(achievement.valid?).to be_falsy
    end
  end
end
