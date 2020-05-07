class User < ApplicationRecord
    belongs_to :city, optional: true
    has_many :gossips
    has_many :comments
    has_many :likes
    has_many :sender_privatemessages, foreign_key: "sender_id", class_name: "PrivateMessage"
    has_and_belongs_to_many :recipient_privatemessages, foreign_key: "recipients_id", class_name: "PrivateMessage"
end
