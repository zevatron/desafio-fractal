class Group < ApplicationRecord
  include Tire::Model::Search
  include Tire::Model::Callbacks  
  belongs_to :sport
  belongs_to :fundador, class_name: "Person"
  has_many :accounts
  has_many :athletes, through: :accounts
  has_many :events
end
