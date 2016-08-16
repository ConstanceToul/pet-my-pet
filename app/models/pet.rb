class Pet < ApplicationRecord

  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :species, presence: true, , inclusion: { in: ["ostrich", "monkey", "dog", "cat", "goat", "rabbit", "hamster", "snake", "rat", "mouse", "chameleon", "swan", "elephant", "pelican", "bird", "tortoise", "gnu", "otter", "pig", "parrot", "lion"], allow_nil: false }
  validates :title, presence: true
  validates :gender, presence: true, inclusion: { in: ["Female", "Male"], allow_nil: false }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 6 }

end
