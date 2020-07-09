class Pet < ApplicationRecord
  SPECIES = %w(dog cat bird turtle lizard rabbit tiger liger ostrich panda rock)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
