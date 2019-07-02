class Animal < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1 }
    validates :espece, presence: true
    validates :sexe, presence: true
    validates :age, presence: true
    validates :desc, presence: true
end
