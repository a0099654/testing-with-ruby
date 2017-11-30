require 'rails_helper'

RSpec.describe "Achievements API", type: :request do
    it 'sends public achievement' do
        get '/api/achievements', nil, { }
    end
end