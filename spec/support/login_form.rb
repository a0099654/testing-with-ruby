class LoginForm
    include Capybara::DSL

    def visit_page
        visit('/users/sign_in') # get it from rake routes
        self
    end

    def login_as(user)
        fill_in("Email", with: user.email)
        fill_in("Password", with: user.password)
        click_on("Log in")
        self
    end
end