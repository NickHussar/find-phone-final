class Developer < ApplicationRecord
  has_many :phones
  has_many :tablets
  has_many :transformers
  has_many :watches
  validates :name, presence: true,
                   length: { minimum: 3 }
end
