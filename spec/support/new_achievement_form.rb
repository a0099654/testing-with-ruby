class NewAchievementForm 
    include Capybara::DSL
    
    def visit_page
        visit('/')
        click_on('New Achievement')
        self
    end

    def fill_in_with(params = {})
        fill_in('Title', with: params.fetch(:title, 'Read a book'))
        fill_in('Description',  with: 'This is a description of the book')
        select('Public', from: 'Privacy')
        check('Featured achievement')
        attach_file('Cover Image', "#{Rails.root}/spec/fixtures/cover_image.png")
        self
    end

    def submit
        click_on('Create achievement')
    end
end