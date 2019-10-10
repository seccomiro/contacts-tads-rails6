class Contact < ApplicationRecord
  belongs_to :kind
  belongs_to :company
  has_many :phones
  has_one :address
  has_and_belongs_to_many :users
end
