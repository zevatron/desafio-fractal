class Athlete < ApplicationRecord
  belongs_to :person
  has_many :accounts
  has_many :groups, through :accounts
end
