class Achievement < ApplicationRecord
    belongs_to :user, optional: true #association
    
    validates :title, presence: true
    validates :title, uniqueness: {
        scope: :user_id,
        message: "you can't have two achievements with the same title"
    }

    enum privacy: [:public_access, :private_access, :friends_access]

    mount_uploader :cover_image, CoverImageUploader

    def description_html
        Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(description)
    end

    def test_title
        "#{title} by #{user.email}"
    end

    def self.by_letter(letter)
        includes(:user).where("title LIKE?", "#{letter}%").order("users.email")
    end

end
