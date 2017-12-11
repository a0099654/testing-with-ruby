RSpec.describe EncouragementsController do

    describe 'GET new' do
        context 'guest user' do
            it 'is redirected back to achievement page' 
            it 'assigns flash message'
        end

        context 'authenticated user' do
            it 'renders :new template' 
            it 'assigns new encouragement to template'
        end

        context 'achievement author' do
            it 'is redirected back to achievement page'
            it 'assigns flash message'
        end

        context 'user who already left encouragement for this achievement'
    end
end