require 'rails_helper'

describe AchievementsController do
    describe "GET new" do
        it "renders :new template" do
            get :new
            expect(response).to render_template(:new)
        end

        it 'assigns new achievement to @achievement'
    end
end