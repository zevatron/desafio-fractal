class Person < ApplicationRecord
has_many :groups, class_name: "Group", foreign_key: "fundador_id"
end
