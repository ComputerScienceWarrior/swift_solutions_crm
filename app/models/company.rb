class Company < ApplicationRecord
    has_many :clients
    has_many :users
    accepts_nested_attributes_for :users
    has_many :client_contacts, through: :clients
    has_many :notes, through: :users
    has_many :cases, through: :users
    validates_presence_of :name, :industry, :size, {message: " cannot be left blank."}
    validates :users, presence: true
    extend FriendlyId
    friendly_id :name, use: :slugged
end
