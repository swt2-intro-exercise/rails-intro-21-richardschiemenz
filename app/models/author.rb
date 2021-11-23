class Author < ApplicationRecord
    def name
        first_name + ' ' + last_name
    end
    validates :first_name, presence: true
    validates :last_name, presence: true
end
