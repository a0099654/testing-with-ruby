require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  let(:email) { email = UserMailer.achievement_created('author@gmail.com').deliver_now }
  
  it 'sends achievement created email to author' do
    expect(email.to).to include('author@gmail.com')
  end

  it 'has a correct subject' do
    expect(email.subject).to eq('Congratulations with your new achievement')
  end
end
