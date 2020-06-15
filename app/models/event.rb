class Event < ApplicationRecord
    has_many :user_events
    has many :users, though: :user_events

    # validations for creating user if we add form for user create/login
end
