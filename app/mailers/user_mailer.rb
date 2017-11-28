class UserMailer < ApplicationMailer

    def achievement_created(email)
        mail to: email
    end
end
