class Event < ApplicationRecord
    has_many :user_events
    has_many :users, through: :user_events

    # validations for creating event if we add form for user create/login
end
