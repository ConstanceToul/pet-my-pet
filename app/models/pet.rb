class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "ostrich", "monkey", "goat", "rabbit", "hamster", "snake", "rat", "mouse", "chameleon", "swan", "elephant", "pelican", "bird", "tortoise", "gnu", "otter", "pig", "parrot", "lion"].sort
  GENDERS = %w(female male)
  has_many :bookings
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES, allow_nil: false }
  validates :title, presence: true
  validates :gender, presence: true, inclusion: { in: GENDERS, allow_nil: false }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 6 }
  validates :photo, presence: true

end
