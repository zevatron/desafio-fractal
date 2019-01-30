class Group < ApplicationRecord
  belongs_to :sport
  belongs_to :fundador, class_name: "Person"
  has_many :accounts
  has_many :athletes, through :accounts
  has_many :events
end
