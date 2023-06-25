class Pet <ApplicationRecord
    validates :name, length: { minimum: 4, maximum: 20 }
    validates :classification, length: { minimum: 5 }
end