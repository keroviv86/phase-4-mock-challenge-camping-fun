class Camper < ApplicationRecord
    has_many :signups, dependent: :destroy
    has_many :activities, through: :signups

    validates :name, presence: true
    # validates :age, numericality: {in: 8..18}
    validates :age, :inclusion => 8..18
end
