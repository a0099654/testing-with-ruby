require 'rails_helper'
require_relative '../support/login_form'
require_relative '../support/new_achievement_form'

feature 'create new achievement' do
    let(:new_achievement_form) { NewAchievementForm.new }
    let(:login_form) { LoginForm.new }
    let(:user) { FactoryBot.create(:user) }

    background do
        login_form.visit_page.login_as(user)
    end

    scenario 'create new achievement with valid data' do
        # VCR.use_cassette("synopsis") do
        #     new_achievement_form.visit_page.fill_in_with(
        #         title: 'Read a book',
        #         cover_image: 'cover_image.png'
        #     ).submit

        #     expect(ActionMailer::Base.deliveries.count).to eq(3)
        #     expect(ActionMailer::Base.deliveries.last.to).to include(user.email)

        #     expect(Achievement.last.cover_image_identifier).to eq('cover_image.png')
        #     expect(page).to have_content('Achievement has been created')
        #     expect(Achievement.last.title).to eq('Read a book') 
        #     expect(page).to have_content('We tweeted for you! https://twitter.com')
        # end
    end

    scenario 'can not create new achievement with invalid data' do
        new_achievement_form.visit_page.fill_in_with(
            title: ''
        ).submit

        click_on('Create achievement')
        expect(page).to have_content('can\'t be blank')
    end
end