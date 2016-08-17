class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "ostrich", "monkey", "goat", "rabbit", "hamster", "snake", "rat", "mouse", "chameleon", "swan", "elephant", "pelican", "bird", "tortoise", "gnu", "otter", "pig", "parrot", "lion"].sort

  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES, allow_nil: false }
  validates :title, presence: true
  validates :gender, presence: true, inclusion: { in: ["Female", "Male"], allow_nil: false }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 6 }

end
