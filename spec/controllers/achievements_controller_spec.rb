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

end