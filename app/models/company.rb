class Company < ApplicationRecord
  has_many :contacts
  has_many :phones, through: :contacts
  has_many :addresses, through: :contacts

  def to_s
    self.name
  end
end
