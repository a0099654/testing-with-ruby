require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  it 'sends achievement created email to author' do
    email = UserMailer.achievement_created('author@gmail.com').deliver_now
    expect(email.to).to include('author@gmail.com')
  end
end
