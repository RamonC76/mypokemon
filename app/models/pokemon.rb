class Pokemon < ApplicationRecord
  validates :prenom, presence: true
  validates :type1, presence: true
end
