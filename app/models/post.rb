class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validate :valid_category

    private
    def valid_category
        valid_categories = ["Fiction","Non-Fiction"]
        if(!valid_categories.include?(category))
            errors.add(:category, "is not included in the list")
        end
    end
end
