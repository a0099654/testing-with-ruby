class UserMailer < ApplicationMailer

    def achievement_created(email)
        mail to: email,
        subject: 'Congratulations with your new achievement'
    end
end
