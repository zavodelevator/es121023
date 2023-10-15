class Firm < ApplicationRecord
  has_many :persons, dependent: :destroy
end
