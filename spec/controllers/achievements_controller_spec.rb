require 'rails_helper'

describe AchievementsController do
    describe 'guest user' do
        describe 'GET index' do

            let(:achievement) { instance_double(Achievement) }

            before do
                allow(Achievement).to receive(:get_public_achievements) { [achievement] } 
            end

            it 'renders :index template' do
                get :index
                expect(response).to render_template(:index)
            end

            it 'assigns public achievements to template' do
                get :index
                expect(assigns(:achievements)).to eq([achievement])
            end
        end
    end

    describe 'authenticated user' do
        # to create stub user
        let(:user) { instance_double(User)  }
        
        before do
            allow(controller).to receive(:current_user) { user }
            allow(controller).to receive(:authenticate_user!) { true }
        end

        describe 'POST create' do
            it 'sends create message to CreateAchievement' do
            end
        end
    end
end