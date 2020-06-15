class Resource < ApplicationRecord
    has_many :user_resources
    has many :users, though: :user_resources

    # validations for create resource

end
