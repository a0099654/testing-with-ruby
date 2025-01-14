require "rails_helper"

RSpec.describe UserMailer, type: :mailer do

  let(:achievement_id) {  1 }
  let(:email) { email = UserMailer.achievement_created('author@gmail.com', achievement_id).deliver_now }
  
  it 'sends achievement created email to author' do
    expect(email.to).to include('author@gmail.com')
  end

  it 'has a correct subject' do
    expect(email.subject).to eq('Congratulations with your new achievement')
  end

  it 'has achievement link in body message' do
    expect(email.body.to_s).to include(achievement_url(achievement_id))
  end
end
