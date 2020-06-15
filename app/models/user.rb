class User < ApplicationRecord
    has_many :user_events
    has_many :user_resources
    has_many :events, through: :user_events
    has_many :resources, through: :user_resources

    # validations for creating user account if we add form for user create/login
end
