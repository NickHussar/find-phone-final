class Phone < ApplicationRecord
  has_one :developer
  validates :model, presence: true,
                        length: { minimum: 3 }
end
